# talon_my_stuff

A personal collection of Talon customizations, helpers, and example scripts.

Overview
--------
This repository contains Talon voice command definitions, helper Python actions, and supporting scripts that the owner uses to customize Talon for development and productivity workflows.

Quick features
--------------
- Core Talon command sets and helpers in `core/` (global commands, editor helpers, date helpers).
- App-specific command sets under `apps/` (VS Code, Edge, Explorer, PowerShell, Telegram, Excel, and more).
- Custom voice-coding lists and snippets in `custom_voice_coding/`.
- Phone / device helpers in `phone_link/` including `phone_link_helper.py` with clipboard typing and ADB helpers.
- Utilities and scripts (e.g. `scripts/generate_cheatsheets.py`) for automating repo tasks.
- Tests and examples at the repo root and `tests/` for validating lists and behaviors.

Notable additions
-----------------
- `core/text_helpers.py`: new text utilities including `remove_punctuation()` and `remove_punctuation_from_selection()` which provide a voice-commandable way to remove punctuation and fix sentence-case. These are exposed to Talon and wired into `core/global.talon`.
- `core/global.talon`: central global commands and the new mappings:
	- `punkPretty well. <user.text>` — cleans dictated text and inserts cleaned text.
	- `remove punctuation` — cleans the current selection in-place using Talon's selection API when available.

Repository layout (high-level)
-----------------------------
- `core/` — core helpers, global Talon commands, and Python action modules (e.g. `core/text_helpers.py`, `core/global.talon`).
- `apps/` — per-application Talon `.talon` files (many app-specific command sets live here).
- `custom_voice_coding/` — lists, snippets and language-specific helpers used by the voice-coding features.
- `phone_link/` — phone and ADB helper actions.
- `scripts/` — small maintenance or generation scripts (cheatsheets, tests helpers).
- `tests/` and test files at the repo root — pytest-compatible tests for lists and helpers.
- `plugins/`, `docs/`, `games/`, `mouse/` — optional plugins and extra artifacts used by the Talon setup.

How to use / develop
---------------------
- Talon reload: after editing `.talon` or Python action files, save and reload Talon (or restart Talon) to pick up changes.
- Adding lists: prefer the `.talon-list` format for static lists; keep legacy Python list modules available until verified.
- Running tests: from the repository root run `pytest -q` to run the test suite.

Safety and secrets
------------------
- Do not commit secrets or API keys. Files such as `open_ai_key.py` may contain local keys — exclude or replace them before sharing.

Author
------
Mark Phillipson — personal Talon customisations and helpers.


