This repository is a personal Talon configuration and helper scripts collection. The goal of these instructions is to help an automated coding agent be productive quickly by focusing on the project's structure, conventions, and common edit patterns.

High level
- Purpose: Talon voice command and helper code for a single user. Primary runtime is Talon; files live under the root and are loaded by Talon as user scripts, lists and talon command files.
- Major areas:
  - `core/` — shared helpers and core Talon glue (examples: `app.py`, `engines.py`, `ordinals.talon`).
  - `apps/` — per-application Talon command sets (`*.talon` and helpers for VS Code, Edge, Visual Studio, etc.).
  - `custom_voice_coding/` — user lists, language snippets and conversion helpers (contains both `.py` modules and `.talon-list` files).
  - `plugins/` — optional Talon plugins shipped with this repo.
  - Tests: a small pytest suite at the repo root (files like `test_talon_lists_all.py`).

Patterns and conventions the agent must follow
- File types and roles:
  - `.talon` — Talon command definitions and contexts. Edit these to change voice commands.
  - `.talon-list` — simple declarative lists used by Talon. Format used in this repo:
    - Header: `list: user.<name>`
    - Delimiter line: `-`
    - Entries are `Key: Value` (example: `Blazor: Blazor`). See `custom_voice_coding/*.talon-list` for examples.
  - `.py` — helper code, modules that call `Module()` and `Context()` and set `ctx_default.lists[...]`. When a list has been converted to a `.talon-list`, prefer editing the `.talon-list` file.

- List usage examples:
  - `custom_voice_coding/custom_snippet_languages.py` demonstrates the older Python list format using `mod.list("snippet_language")` and `ctx_default.lists["user.snippet_language"] = {...}`.
  - Converted files live as `custom_voice_coding/*.talon-list` with the `list:` header and a `-` delimiter, then `Key: Value` lines.

- Naming:
  - Lists are in the `user.` namespace (e.g. `user.snippet_category`, `user.snippet_language`). Keep that prefix when creating or editing lists.
  - `.talon` files are grouped under `apps/` and `core/` for app-specific and global behaviour respectively.

Developer workflows (how to test and iterate)
- Talon reload: Talon typically loads files from this user folder. After edits you can:
  - Save the file and use the Talon menu/UI to reload or restart Talon if changes do not appear.
  - For lists converted from Python to `.talon-list`, prefer editing the `.talon-list` file; Talon will pick it up on reload.
- Tests: There are pytest-style tests at the repo root (e.g. `test_talon_lists_all.py`, `test_talon_search.py`). To run the test suite locally from the repository root:

```powershell
pytest -q
```

Integration points & external dependencies
- Primary runtime: Talon (voice engine) — this repo depends on the Talon application to interpret `.talon` and `.talon-list` files.
- Some helper scripts are Python files that run under the same Python interpreter Talon uses. Do not assume an external virtualenv; inspect the running Talon environment when debugging.
- There is a `dotnet` build task configured in the workspace (used for some example files under the repo). The repo has a few `.cs` test/demo files but no formal .NET project in the root — do not run dotnet builds unless you know which project to target.

Editing guidance for the agent
- When adding or editing lists, prefer the `.talon-list` format used widely here (header, `-` delimiter, `Key: Value` entries). Example:

```
<!--
Repository-specific Copilot instructions for automated coding agents.
Keep this file concise and actionable — prefer specific, discoverable guidance
over generic best-practices. Update when repo structure or workflows change.
-->

# Overview
This repo contains a personal Talon configuration (voice commands, lists and helper scripts) plus a few helper/demo files. Primary runtime is the Talon app; the repo is organized so Talon can load files directly from the folder.

**Key directories**
- `core/` — shared helpers and core Talon glue (examples: `app.py`, `engines.py`, `ordinals.talon`).
- `apps/` — per-application command files (many `*.talon` files for VS Code, Edge, Visual Studio, etc.).
- `custom_voice_coding/` — lists, snippets, and helper Python modules. Contains both legacy Python lists and `.talon-list` files.
- `plugins/` — optional Talon plugins.
- `tests/` and repo-root pytest files (`test_talon_lists_all.py`, `test_talon_search.py`).

# What to know before changing code
- Talon interprets `.talon` and `.talon-list` files at runtime — changes appear when Talon reloads. Use Talon's UI to reload or restart after edits.
- Python helper scripts are executed by the same Python runtime Talon uses; do not assume a venv. Inspect the local Talon python if you need dependencies.
- Lists follow two formats in this repo:
  - Preferred: `.talon-list` files with header `list: user.<name>`, a `-` delimiter line, then `Key: Value` lines. Example in `custom_voice_coding/`.
  - Legacy: Python modules that call `Module()` and assign `ctx_default.lists[...]`. When converting, keep both implementations until validated.

# Developer workflows & commands
- Run unit tests from the repository root with pytest:

```powershell
pytest -q
```

- To run a single test file or test case, use pytest's file::test selector.
- There is a VS Code task `build` that runs `dotnet build` (used for a few demo `.cs` files). There is no single .NET solution for the repo — run `dotnet` only if you know which project to target.

# Patterns & conventions (repo-specific)
- Lists use the `user.` namespace (e.g. `user.snippet_language`). Preserve those names when adding or editing lists.
- Prefer `.talon-list` edits over Python list modules. If converting a Python list to `.talon-list`:
  1. Add the `.talon-list` file with identical values.
  2. Keep the Python module until Talon reload shows the `.talon-list` is used.
  3. Remove the Python module only after verification.
- Voice command files (`*.talon`) use contexts and capture groups consistently — match existing captures when adding similar commands. See `apps/custom_visual_studio_code.talon` and `core/ordinals.talon` for examples.

# Integration points & sensitive files
- `open_ai_key.py` and other secret-like files may contain API keys — do not commit new secrets. If you need to run code requiring keys, ask the repo owner for a safe method.
- Talon is the runtime: changes are validated best by reloading Talon and running voice commands interactively.

# Editing guidance for an automated agent
- Small edits: update the `.talon-list` or `.talon` file and suggest the user reload Talon.
- Larger changes: run the pytest suite locally before proposing breaking changes.
- Do not add external dependencies without confirming the target Talon runtime and Python environment.
- Preserve file indentation and style (minimal diffs). Avoid renaming lists or changing `user.` list names without coordination.

# Files to inspect when working
- `core/` and `apps/` for command patterns and contexts
- `custom_voice_coding/` for list formats and snippet helpers
- `test_talon_lists_all.py`, `test_talon_search.py` for how lists are exercised in tests
- `.github/instructions/memory.instructions.md` for personal context about the repository owner

# If something is unclear
- Ask which local Talon Python interpreter to assume, or request an example voice-to-text mapping before inventing speech patterns.
- When in doubt about secrets, stop and request guidance.

 
