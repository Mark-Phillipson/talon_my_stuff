Talon Cheatsheet Generator Prompt

Purpose
- Produce a set of Markdown cheatsheets from a Talon repository extraction.
- Output one dedicated `Global` cheatsheet and one cheatsheet per main application (20 Commands Or Over).
- Output One Md File for All the applications with twenty or less Commands.
- Do NOT produce any HTML exports or embedded viewer files.

Requirements
- Input: repository Talon source files (.talon, .talon-list, and Python files that register lists).
- Output directory: `docs/cheatsheet/` (creates if missing).
- Outputs:
  - `global.md` — Markdown cheatsheet containing only commands whose scope maps to Global.
  - `{app_name}.md` — one Markdown file per application. App names should be friendly (e.g., `Edge`, `VS Code`, `Visual Studio`, `Azure Data Studio`, `WhatsApp`). Use heuristics when the scope is a Windows path to extract the executable name.
  - `README.md` — index listing generated markdown files with links.

Formatting
- Each Markdown file should start with a top-level heading: `# Talon Cheatsheet — <AppName>`.
- Commands are presented in a simple table with columns: `Command | Action | Source`.
- Escape pipes in any cell content.
- Ensure a blank line after a heading and then a table! 

Ordering
- Order alphabetically On the spoken text

Notes
- Prefer human-friendly app names when obvious (mapping examples: `msedge.exe` -> `Edge`, `vscode` -> `VS Code`, `ms-teams.exe` -> `Microsoft Teams`).


 Create a separate markdown file which contains just the links to all the other markdown files created.
