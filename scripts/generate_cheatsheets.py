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


def categorize_command(spoken: str, source: str) -> str:
    """Determine the functional category of a command."""
    spoken_lower = spoken.lower()
    source_lower = source.lower()
    
    # Mouse commands
    if "mouse" in source_lower or any(word in spoken_lower for word in ["mouse", "click", "drag", "scroll", "righty", "grid", "hover", "position"]):
        return "🖱️ Mouse Control"
    
    # Window management
    if any(word in spoken_lower for word in ["window", "maximise", "minimise", "restore", "switch", "focus", "screen"]):
        return "🪟 Window Management"
    
    # Clipboard
    if any(word in spoken_lower for word in ["clipboard", "clippy", "copy", "paste", "clip"]):
        return "📋 Clipboard"
    
    # Navigation
    if any(word in spoken_lower for word in ["go to", "move up", "move down", "move left", "move right", "fly", "base", "home", "end"]):
        return "🧭 Navigation"
    
    # Text editing
    if any(word in spoken_lower for word in ["select", "delete", "undo", "redo", "backspace", "take line", "fresh line", "brackets", "braces", "quotes"]):
        return "✏️ Text Editing"
    
    # Voice control
    if any(word in spoken_lower for word in ["sleep", "wake", "drowse", "voice typing", "talon", "dictation", "mode"]):
        return "🎤 Voice Control"
    
    # Applications
    if any(word in spoken_lower for word in ["launch", "focus code", "focus edge", "focus terminal", "open"]):
        return "🚀 Application Launcher"
    
    # System
    if any(word in spoken_lower for word in ["date", "time", "screenshot", "snipping", "color picker", "taskbar"]):
        return "⚙️ System"
    
    # Development
    if any(word in spoken_lower for word in ["sharp", "snippet", "search list", "launch voice", "code"]):
        return "💻 Development"
    
    # Custom insertions
    if any(word in spoken_lower for word in ["enter", "insert", "email", "password", "username", "github"]):
        return "📝 Custom Insertions"
    
    return "📌 Other"


def simplify_source(source: str) -> str:
    """Extract just the filename without extension from a path."""
    return Path(source).stem


def create_human_readable_description(spoken: str, action: str) -> str:
    """Convert raw action code into human-readable description."""
    action = action.strip()
    
    # For very complex actions, infer from spoken command
    if len(action) > 200 or action.count('\n') > 3:
        return infer_description_from_spoken(spoken)
    
    # Remove newlines and normalize whitespace
    action_clean = " ".join(action.split())
    
    # Key press patterns
    if re.match(r'^key\([^)]+\)$', action_clean):
        key = re.search(r'key\(([^)]+)\)', action_clean).group(1)
        return f"Press {key.strip('\"\'')}"
    
    # Insert text patterns
    if re.match(r'^insert\(["\'].*["\']\)$', action_clean):
        text = re.search(r'insert\(["\'](.*)["\']\)', action_clean).group(1)
        if len(text) > 30:
            return "Insert custom text"
        return f'Insert "{text}"'
    
    # VS Code commands
    if 'user.vscode' in action_clean:
        cmd = re.search(r'user\.vscode\("([^"]+)"\)', action_clean)
        if cmd:
            return f"VS Code: {cmd.group(1).split('.')[-1].replace('_', ' ').title()}"
    
    # Application switching
    if 'user.switcher_focus' in action_clean:
        app = re.search(r'user\.switcher_focus\("([^"]+)"\)', action_clean)
        if app:
            return f"Focus {app.group(1).replace('.exe', '').title()}"
    
    # Simple speech control
    if action_clean == 'speech.enable()':
        return "Enable voice recognition"
    if action_clean == 'speech.disable()':
        return "Disable voice recognition"
    
    # Mouse actions
    if action_clean == 'mouse_click(0)':
        return "Left click"
    if action_clean == 'mouse_click(1)':
        return "Right click"
    if 'mouse_move' in action_clean and 'mouse_click' in action_clean:
        return "Move mouse and click"
    if 'mouse_move' in action_clean:
        return "Move mouse to position"
    if 'mouse_drag' in action_clean:
        return "Drag mouse"
    if 'mouse_scroll' in action_clean:
        return "Scroll"
    
    # Mode changes
    mode_enable = re.search(r'mode\.enable\("([^"]+)"\)', action_clean)
    if mode_enable:
        return f"Enable {mode_enable.group(1)} mode"
    
    mode_disable = re.search(r'mode\.disable\("([^"]+)"\)', action_clean)
    if mode_disable:
        return f"Disable {mode_disable.group(1)} mode"
    
    # URL opening
    if 'open_url' in action_clean or 'user.open_url' in action_clean:
        return "Open URL in browser"
    
    # Clipboard operations
    if 'clip.set_text' in action_clean or 'clipboard' in action_clean.lower():
        return "Copy to clipboard"
    if 'clip.text()' in action_clean:
        return "Paste from clipboard"
    
    # Find/search
    if 'edit.find()' in action_clean:
        return "Open find dialog"
    
    # Complex multi-step actions - infer from spoken
    if any(indicator in action_clean for indicator in ['sleep(', 'repeat(', 'Wait', ' → ']):
        return infer_description_from_spoken(spoken)
    
    # Fallback to inference
    return infer_description_from_spoken(spoken)


def infer_description_from_spoken(spoken: str) -> str:
    """Infer a description based on the spoken command text."""
    spoken_lower = spoken.lower()
    
    # Specific patterns
    if "launch" in spoken_lower or "open" in spoken_lower:
        app = spoken_lower.replace("launch", "").replace("open", "").strip()
        if app:
            return f"Launch {app.title()}"
        return "Launch application"
    
    if "focus" in spoken_lower or "switch to" in spoken_lower:
        app = spoken_lower.replace("focus", "").replace("switch to", "").strip()
        if app:
            return f"Switch to {app.title()}"
        return "Switch application focus"
    
    if "insert" in spoken_lower or "enter" in spoken_lower:
        return "Insert predefined text"
    
    if "copy" in spoken_lower:
        return "Copy to clipboard"
    if "paste" in spoken_lower:
        return "Paste from clipboard"
    
    if "click" in spoken_lower:
        if "right" in spoken_lower:
            return "Right click"
        return "Left click"
    
    if "move" in spoken_lower or "fly" in spoken_lower or "go to" in spoken_lower:
        return "Navigate/move cursor"
    
    if "select" in spoken_lower or "take" in spoken_lower:
        return "Select text/content"
    
    if "delete" in spoken_lower or "backspace" in spoken_lower:
        return "Delete text"
    
    if "undo" in spoken_lower:
        return "Undo last action"
    if "redo" in spoken_lower:
        return "Redo last action"
    
    if "window" in spoken_lower or "maximise" in spoken_lower or "minimize" in spoken_lower:
        return "Window management"
    
    if "zoom" in spoken_lower:
        if "in" in spoken_lower:
            return "Zoom in"
        if "out" in spoken_lower:
            return "Zoom out"
        return "Zoom"
    
    if "scroll" in spoken_lower:
        if "down" in spoken_lower:
            return "Scroll down"
        if "up" in spoken_lower:
            return "Scroll up"
        return "Scroll"
    
    if "mode" in spoken_lower:
        return "Change mode"
    
    if "talon" in spoken_lower:
        return "Talon control command"
    
    # Generic fallback
    return "Execute voice command"


def parse_talon_file(path: Path):
    """Return (app_tokens, list_of_commands)

    app_tokens: list of app scope tokens (may be empty -> Global)
    list_of_commands: list of (spoken_text, action_text)
    """
    lines = path.read_text(encoding="utf-8", errors="ignore").splitlines()
    app_tokens = []
    commands = []
    i = 0
    
    # Check if this is a game-specific file (check if 'games' appears in path parts)
    is_game_file = "games" in path.parts or "game" in path.stem.lower()
    
    # capture app: or app.name: lines early
    for ln in lines[:40]:
        m = re.match(r"^\s*app(?:\.name)?:\s*(.+)", ln, flags=re.I)
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

    return app_tokens, commands, is_game_file


def main():
    talon_files = list(ROOT.rglob("*.talon"))
    if not talon_files:
        print("No .talon files found in workspace.")
        sys.exit(1)

    apps = {}  # app_key -> list of (spoken, action, source)

    for f in talon_files:
        app_tokens, commands, is_game_file = parse_talon_file(f)
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
                # treat as Global if in core or root (but not games)
                if not is_game_file:
                    key = "Global"
                else:
                    # Skip game files without app tokens for global
                    continue

        # normalize key
        key_norm = key
        if key_norm.lower() in ("global", "core", ""):
            key_norm = "Global"

        display_name = friendly_name_from_app_token(key_norm)

        app_list = apps.setdefault(display_name, [])
        for spoken, action in commands:
            # Skip game commands from global
            if display_name == "Global" and is_game_file:
                continue
            app_list.append((spoken, action or "", f.relative_to(ROOT).as_posix()))

    # separate Global
    global_cmds = apps.pop("Global", [])

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    def write_md(path: Path, title: str, entries, is_global=False):
        lines = [f"# Talon Cheatsheet — {title}", ""]
        
        # Sort all entries alphabetically by spoken text
        sorted_entries = sorted(entries, key=lambda e: e[0].lower())
        
        if is_global:
            # For global, group by functionality
            from collections import defaultdict
            by_category = defaultdict(list)
            for spoken, action, src in sorted_entries:
                category = categorize_command(spoken, src)
                by_category[category].append((spoken, action, src))
            
            # Define order of categories
            category_order = [
                "🎤 Voice Control",
                "🖱️ Mouse Control",
                "🧭 Navigation",
                "✏️ Text Editing",
                "📋 Clipboard",
                "🪟 Window Management",
                "🚀 Application Launcher",
                "💻 Development",
                "⚙️ System",
                "📝 Custom Insertions",
                "📌 Other"
            ]
            
            for category in category_order:
                if category not in by_category:
                    continue
                    
                lines.append(f"## {category}")
                lines.append("")
                lines.append("| Spoken Command | Description | Source |")
                lines.append("|----------------|-------------|--------|")
                
                for spoken, action, src in by_category[category]:
                    s = escape_md_cell(spoken)
                    # Create human-readable description
                    desc = create_human_readable_description(spoken, action)
                    a = escape_md_cell(desc)
                    simplified_src = simplify_source(src)
                    lines.append(f"| {s} | {a} | {simplified_src} |")
                lines.append("")
        else:
            # For app-specific, simple table
            lines.append("| Spoken Command | Description | Source |")
            lines.append("|----------------|-------------|--------|")
            for spoken, action, src in sorted_entries:
                s = escape_md_cell(spoken)
                # Simplify action description
                desc = action.replace("\n", " ⏎ ").strip()
                if len(desc) > 100:
                    desc = desc[:97] + "..."
                a = escape_md_cell(desc)
                simplified_src = simplify_source(src)
                lines.append(f"| {s} | {a} | {simplified_src} |")
            lines.append("")
        
        content = "\n".join(lines)
        path.write_text(content, encoding="utf-8")

    # global
    write_md(OUT_DIR / "global.md", "Global", global_cmds, is_global=True)

    # split apps by size
    big_apps = {k: v for k, v in apps.items() if len(v) >= 20}
    small_apps = {k: v for k, v in apps.items() if len(v) < 20}

    generated = ["global.md"]

    for app_name, entries in sorted(big_apps.items()):
        fname = f"{app_name.replace(' ', '_').lower()}.md"
        write_md(OUT_DIR / fname, app_name, entries, is_global=False)
        generated.append(fname)

    # aggregated small apps into one file
    other_entries = []
    for app_name, entries in sorted(small_apps.items()):
        # add a header row for each app inside the aggregated file using a pseudo-section
        for spoken, action, src in entries:
            other_entries.append((f"[{app_name}] {spoken}", action, src))

    if other_entries:
        write_md(OUT_DIR / "other_apps.md", "Other Apps (<=20 commands)", other_entries, is_global=False)
        generated.append("other_apps.md")

    # README index with emojis
    readme_lines = ["# 📚 Talon Cheatsheets Index", "", "Generated cheatsheets for voice commands:", "", "## Available Cheatsheets", ""]
    
    # Add global with emoji
    readme_lines.append(f"- 🌐 [Global Commands](global.md)")
    
    # Add other files
    for g in generated[1:]:  # Skip global.md since we already added it
        name = Path(g).stem.replace('_', ' ').title()
        # Choose emoji based on app type
        emoji = "💻"
        if "other" in g.lower():
            emoji = "📱"
        elif any(game in g.lower() for game in ["cnc", "ra3", "steel", "sudden", "relic", "troop", "whoosh"]):
            emoji = "🎮"
        elif "edge" in g.lower() or "chrome" in g.lower():
            emoji = "🌐"
        elif "terminal" in g.lower():
            emoji = "⌨️"
        elif "whatsapp" in g.lower():
            emoji = "💬"
        elif "desktop" in g.lower() or "remote" in g.lower():
            emoji = "🖥️"
        
        readme_lines.append(f"- {emoji} [{name}]({g})")
    
    readme_lines.append("")
    readme_lines.append("---")
    readme_lines.append("")
    readme_lines.append("*Generated automatically from Talon voice command files* 🎤")
    
    (OUT_DIR / "README.md").write_text("\n".join(readme_lines) + "\n", encoding="utf-8")

    print(f"Wrote {len(generated)} cheat sheet files to {OUT_DIR}")


if __name__ == "__main__":
    main()
