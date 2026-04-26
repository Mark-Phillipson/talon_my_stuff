---
name: clipboard
user-invocable: true
description: "Skill to let the agent copy text to the user's system clipboard and read/paste from it. Use when the agent needs to transfer text between itself and the user's OS (copying snippets, commands, or short non-sensitive text) in an explicit, consented way."
---

# Clipboard Skill

## Purpose

Provides a safe, repeatable workflow the agent uses to copy text to the system clipboard and to read/paste clipboard contents back into chat. This skill documents decision points, supported platform commands, security expectations, example prompts, and test checks.

## When To Use

- Copy short, non-sensitive text the user explicitly requests copied to the OS clipboard.
- Read (paste) clipboard contents when the user asks the agent to paste or verify what's on the clipboard.
- Do NOT use for secrets, passwords, or private data without explicit confirmation.

## Decision Flow

1. Confirm intent: If the user request contains potentially sensitive content, ask for explicit confirmation before copying.
2. Prepare the payload: sanitize (trim trailing newlines unless user expects them) and limit size if requested.
3. Execute platform-appropriate clipboard command.
4. Verify success (read back a short preview) and inform the user.

## Platform Commands / Implementation Recipes

Windows (PowerShell / pwsh):

- Copy text:

- - In a PowerShell session: `Set-Clipboard -Value $text`
- - From a shell: `echo "<text>" | Set-Clipboard`

- Read clipboard:

- - `Get-Clipboard`

Cross-platform fallbacks (when PowerShell unavailable):

- Use `clip` on Windows CMD: `echo <text> | clip`
- Use `pbcopy` / `pbpaste` on macOS
- Use `xclip` or `xsel` on X11/Linux if available
- Use a small helper script (Python with `pyperclip` or Node `clipboardy`) if needed and allowed

Implementation notes for agents that can run terminal commands:

- Use short timeouts and avoid leaving background processes running.
- When available, use the OS-native command for reliability.

## Examples (User Prompts)

- "Copy the following command to my clipboard: git checkout -b feature/x"
- "Copy this snippet to clipboard and confirm: <paste snippet>"
- "Paste the current clipboard contents here."

## Confirmation & Verification

- After copying, the agent SHOULD read back the first 120 characters (or the whole text if shorter) as a confirmation: e.g., "Copied — preview: 'git checkout -b feature/x' — proceed?".
- If the agent cannot verify (tooling unavailable), it MUST tell the user that verification isn't possible and ask whether to proceed.

## Security & Privacy

- Never copy or paste secrets, passwords, or highly-sensitive personal data unless the user explicitly consents at the time of the request.
- Avoid automatic clipboard writes triggered by ambiguous requests. Require explicit language: "copy to clipboard" or "put this on my clipboard".
- Log only operation metadata (success/failure). Do not log clipboard contents in persistent logs.

## Tests & Acceptance Criteria

- Copy test: agent receives the text, executes the copy command, reads clipboard, and returns a matching preview.
- Read test: when asked to paste, the agent runs the read command and returns the clipboard contents verbatim (or truncated with a preview when long).

## Edge Cases

- Binary or very large data: warn the user and decline to copy unless explicitly requested and the environment supports it.
- Encoding mismatches: normalize to UTF-8 where possible and warn if non-text content is detected.

## Example Implementation Snippet (PowerShell)

- Copy helper (pseudo):

- - `$text = @"<content>"@`
- - `Set-Clipboard -Value $text`
- - `Get-Clipboard | Select-Object -First 1` # preview

## Suggested Example Prompts For Users

- "Copy this to my clipboard: <text>"
- "Please paste the clipboard here."
- "Copy the following and confirm when done: <text>"

## Next Steps for Integration

- Ensure the agent has permission to run terminal commands or access a clipboard API on the host.
- Add a small test harness that runs the copy/read commands and asserts preview equality.

## Optional: Reading Clipboard History from an SQLite Database

If you maintain a clipboard history database (example path: C:\Users\MPhil\source\repos\personal-assistant\clipboard-history.db), the agent can read entries on explicit user request. Follow this pattern:

- Confirm permission: always ask the user to confirm the exact DB path before opening it.
- Validate access: check the file exists and can be read.
- Inspect schema: run `sqlite3 "<path>" .schema` or use `PRAGMA table_info('<table>')` to discover the table/column names.
- Common discovery query: `SELECT name FROM sqlite_master WHERE type='table';`
- Typical read query (example): `SELECT id, content, created_at FROM clips ORDER BY created_at DESC LIMIT 50;`

Implementation recipes:

- Python (recommended, uses builtin sqlite3):

- - import sqlite3
- - from pathlib import Path
- - db = Path(r"C:\Users\MPhil\source\repos\personal-assistant\clipboard-history.db")
- - with sqlite3.connect(db) as conn:
- -     cur = conn.cursor()
- -     cur.execute("SELECT id, content, created_at FROM clips ORDER BY created_at DESC LIMIT ?", (limit,))
- -     rows = cur.fetchall()
- - # Truncate and sanitize `content` before showing a preview to the user.

- CLI (if `sqlite3` binary is available):

- - sqlite3 "C:\Users\MPhil\source\repos\personal-assistant\clipboard-history.db" "SELECT content, created_at FROM clips ORDER BY created_at DESC LIMIT 10;"

Presentation rules:

- Always show a short preview (e.g., first 200 characters) for each row, then ask which entry (by id or index) the user wants to copy to the clipboard.
- Do not automatically copy entries without explicit confirmation.

Security & privacy:

- Database contents may include sensitive data. Require explicit consent before reading or copying any clipboard-history entry.
- Do NOT store full clipboard contents in logs or persistent telemetry.

Edge cases:

- Locked DB: if the file is locked by another process, report the error and ask the user whether to try again.
- Unknown schema: if `clips` table or expected columns aren't present, list discovered tables and ask the user to pick which table/columns to use.
- Large entries: truncate previews and offer to export or save if the user explicitly requests the full contents.

Tests & acceptance:

- DB-read test: agent can open the DB, discover tables, run a read query, and present previews matching the DB rows.
- End-to-end copy test: after the user selects an entry, agent copies that entry to clipboard and verifies via a preview read.
