Talon Cheatsheet Generator Prompt

Purpose
- Produce a set of Markdown cheatsheets from a Talon repository extraction.
- Output one dedicated `Global` cheatsheet and one cheatsheet per main application (20 Commands Or Over).
- Output One Markdown File for All the applications with twenty or less Commands.
- Do NOT produce any HTML exports or embedded viewer files.

Requirements
- Input: repository Talon source files (.talon, .talon-list, and Python files that register lists and captures).
- Output directory: `docs/cheatsheet/` (creates if missing).
- Outputs:
  - `global.md` — Markdown cheatsheet containing only commands whose scope maps to Global (exclude game-specific commands as they only work in specific game contexts).
  - `{app_name}.md` — one Markdown file per application. App names should be friendly (e.g., `Edge`, `VS Code`, `Visual Studio`, `Azure Data Studio`, `WhatsApp`). Use heuristics when the scope is a Windows path to extract the executable name.
  - `README.md` — index listing generated markdown files with links.

Formatting
- Each Markdown file should start with a top-level heading: `# Talon Cheatsheet — <AppName>`.
- Escape pipes in any cell content.
- Ensure a blank line after a heading and then a table! 
- Include a section that also shows the values for Talon lists and Talon Python captures
- Information should include the spoken text, short description of what the command does, and the source filename (without extension or path)
- Descriptions should be human-readable explanations, NOT raw code with carriage returns or script verbatim
- Focus on WHAT the command does, not HOW it does it

Ordering
- For the global markdown file, organize commands by functional category with emoji section headers:
  - 🎤 Voice Control
  - 🖱️ Mouse Control
  - 🧭 Navigation
  - ✏️ Text Editing
  - 📋 Clipboard
  - 🪟 Window Management
  - 🚀 Application Launcher
  - 💻 Development
  - ⚙️ System
  - 📝 Custom Insertions
  - 🎮 Gaming
  - 📌 Other
- For app-specific files, order alphabetically by spoken text
- Within each category/section, sort commands alphabetically

Notes
- Prefer human-friendly app names when obvious (mapping examples: `msedge.exe` -> `Edge`, `vscode` -> `VS Code`, `ms-teams.exe` -> `Microsoft Teams`).

If the markdown files already exist don't worry about overwriting/amending  as these will be regenerated regularly
 Create a separate markdown file which contains just the links to all the other markdown files created.
 Use emojis where necessary 😀 