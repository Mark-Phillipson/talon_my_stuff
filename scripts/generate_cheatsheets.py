#!/usr/bin/env python3
"""Generate Markdown cheatsheets from Talon .talon files.

Produces:
 - docs/cheatsheet/global.md
 - docs/cheatsheet/<AppName>.md for apps with >20 commands
 - docs/cheatsheet/other_apps.md for apps with <=20 commands (aggregated)
 - docs/cheatsheet/README.md index

This is a pragmatic extractor — it uses simple heuristics to find `app:` scopes
and command lines of the form `spoken text: action` or multi-line actions.
"""
from pathlib import Path
import re
import sys
import textwrap

ROOT = Path(__file__).resolve().parents[1]
OUT_DIR = ROOT / "docs" / "cheatsheet"


FRIENDLY_MAP = {
    "msedge.exe": "Edge",
    "microsoft_edge": "Edge",
    "edge": "Edge",
    "vscode": "VS Code",
    "visual_studio_code": "VS Code",
    "code": "VS Code",
    "visualstudio": "Visual Studio",
    "visual_studio": "Visual Studio",
    "azure_data_studio": "Azure Data Studio",
    "ms-teams.exe": "Microsoft Teams",
    "teams": "Microsoft Teams",
    "explorer": "Explorer",
    "notepad": "Notepad",
    "chrome": "Chrome",
    "firefox": "Firefox",
    "terminal": "Windows Terminal",
}


def friendly_name_from_app_token(token: str) -> str:
    t = token.strip().lower()
    t = re.sub(r"[\[\]{}()]+", "", t)
    for k, v in FRIENDLY_MAP.items():
        if k in t:
            return v
    # fallback: take basename-like token
    t = Path(t).stem
    return t.replace("_", " ").title()


def escape_md_cell(s: str) -> str:
    return s.replace("|", "\\|")


def parse_talon_file(path: Path):
    """Return (app_tokens, list_of_commands)

    app_tokens: list of app scope tokens (may be empty -> Global)
    list_of_commands: list of (spoken_text, action_text)
    """
    lines = path.read_text(encoding="utf-8", errors="ignore").splitlines()
    app_tokens = []
    commands = []
    i = 0
    # capture app: lines early
    for ln in lines[:40]:
        m = re.match(r"^\s*app:\s*(.+)", ln, flags=re.I)
        if m:
            token = m.group(1).strip()
            app_tokens.append(token)

    # parse commands
    while i < len(lines):
        ln = lines[i]
        i += 1
        if not ln.strip():
            continue
        if ln.lstrip().startswith("#"):
            continue
        # match 'left : right' where left is spoken text, right may be on same line or empty
        m = re.match(r"^(.*?)\s*:\s*(.*)$", ln)
        if not m:
            continue
        left = m.group(1).strip()
        right = m.group(2).rstrip()
        # collect multi-line indented actions
        if right == "":
            action_lines = []
            while i < len(lines) and (lines[i].startswith(" ") or lines[i].startswith("\t")):
                action_lines.append(lines[i].rstrip())
                i += 1
            action = "\n".join(action_lines).strip()
        else:
            action = right

        # split left on '|' alternatives
        alts = [a.strip() for a in re.split(r"\s*\|\s*", left) if a.strip()]
        for a in alts:
            commands.append((a, action))

    return app_tokens, commands


def main():
    talon_files = list(ROOT.rglob("*.talon"))
    if not talon_files:
        print("No .talon files found in workspace.")
        sys.exit(1)

    apps = {}  # app_key -> list of (spoken, action, source)

    for f in talon_files:
        app_tokens, commands = parse_talon_file(f)
        if app_tokens:
            # choose first token as key
            key = app_tokens[0]
        else:
            # heuristic: if file is under apps/ use filename
            parts = f.parts
            if "apps" in parts:
                idx = parts.index("apps")
                # prefer next segment or filename
                if idx + 1 < len(parts) - 1:
                    key = parts[idx + 1]
                else:
                    key = f.stem
            else:
                # treat as Global if in core or root
                key = "Global"

        # normalize key
        key_norm = key
        if key_norm.lower() in ("global", "core", ""):
            key_norm = "Global"

        display_name = friendly_name_from_app_token(key_norm)

        app_list = apps.setdefault(display_name, [])
        for spoken, action in commands:
            app_list.append((spoken, action or "", f.relative_to(ROOT).as_posix()))

    # separate Global
    global_cmds = apps.pop("Global", [])

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    def write_md(path: Path, title: str, entries):
        lines = [f"# Talon Cheatsheet — {title}", "", "Command | Action | Source", "--- | --- | ---"]
        for spoken, action, src in sorted(entries, key=lambda e: e[0].lower()):
            s = escape_md_cell(spoken)
            a = escape_md_cell(action.replace("\n", " ⏎ "))
            lines.append(f"{s} | {a} | {src}")
        content = "\n".join(lines) + "\n"
        path.write_text(content, encoding="utf-8")

    # global
    write_md(OUT_DIR / "global.md", "Global", global_cmds)

    # split apps by size
    big_apps = {k: v for k, v in apps.items() if len(v) > 20}
    small_apps = {k: v for k, v in apps.items() if len(v) <= 20}

    generated = ["global.md"]

    for app_name, entries in sorted(big_apps.items()):
        fname = f"{app_name.replace(' ', '_')}.md"
        write_md(OUT_DIR / fname, app_name, entries)
        generated.append(fname)

    # aggregated small apps into one file
    other_entries = []
    for app_name, entries in sorted(small_apps.items()):
        # add a header row for each app inside the aggregated file using a pseudo-section
        for spoken, action, src in entries:
            other_entries.append((f"[{app_name}] {spoken}", action, src))

    if other_entries:
        write_md(OUT_DIR / "other_apps.md", "Other Apps (<=20 commands)", other_entries)
        generated.append("other_apps.md")

    # README index
    readme_lines = ["# Talon Cheatsheet Index", "", "Generated cheatsheets:", ""]
    for g in generated:
        name = Path(g).stem
        readme_lines.append(f"- [{name}]({g})")
    (OUT_DIR / "README.md").write_text("\n".join(readme_lines) + "\n", encoding="utf-8")

    print(f"Wrote {len(generated)} cheat sheet files to {OUT_DIR}")


if __name__ == "__main__":
    main()
