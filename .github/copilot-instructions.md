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
list: user.snippet_language
-
Blazor: Blazor
Bootstrap: Bootstrap
```

- If you need to convert an existing Python `Module()` list into a `.talon-list`, preserve the string values exactly and remove the `.py` module only after the `.talon-list` is in place.
- When changing voice commands in `.talon` files, follow existing naming: keep contexts and capture groups consistent (look at `apps/custom_visual_studio_code.talon` and `core/ordinals.talon` for examples of patterns and captures).

Important files to reference when editing
- `core/` — shared helpers and ordinals handling
- `apps/custom_visual_studio_code.talon` — example app-specific command file
- `custom_voice_coding/` — lists and snippet helpers; both `.py` and `.talon-list` files live here
- `test_talon_lists_all.py`, `test_talon_search.py` — tests that exercise list loading and lookup behavior

If something is unclear
- Ask for which runtime environment to assume (local Talon installation path / Python version) before making changes that require running Talon or invoking its Python environment.
- Request example audio-to-text mappings only when necessary — do not attempt to invent speech patterns beyond what's present in `.talon` files.


---

# Talon Python Action Registration & ImGui Troubleshooting (Lessons Learned)

## Action Registration Best Practices
- Always define `mod = Module()` at the very top of the file, before any `@mod.action_class` decorator is used.
- Only one `@mod.action_class` block is allowed per file. All actions must be methods of a single class under this decorator.
- If multiple `@mod.action_class` blocks are present, only the last one is registered and earlier ones are ignored.
- All actions must be methods of the class decorated with `@mod.action_class`.
- If actions are not appearing in the REPL, check for:
  - Multiple `@mod.action_class` blocks
  - `mod = Module()` defined after the decorator (must be before)
  - Syntax errors or import errors in the Talon log
  - File not being loaded (check for print statements or Talon log entries)

## ImGui Window Registration
- ImGui windows must be defined with `@imgui.open()` and a function that takes a `gui: imgui.GUI` argument.
- To toggle an ImGui window, use `.open()` and `.close()` methods on the window function.
- Example minimal ImGui window:
  ```python
  from talon import Module, imgui
  mod = Module()

  @imgui.open()
  def my_window(gui: imgui.GUI):
      gui.text("Hello world!")

  @mod.action_class
  class Actions:
      def my_window_toggle():
          if my_window.showing:
              my_window.close()
          else:
              my_window.open()
  ```

## Debugging Steps
- If actions or ImGui windows do not appear after editing scripts:
  1. Save the file and reload Talon user scripts (or fully restart Talon for best results).
  2. Check the Talon log for syntax or import errors.
  3. Use print statements at the top of the file to confirm loading.
  4. Confirm actions are available in the REPL (e.g. `user.my_action()`).
  5. If still not working, check for breaking changes in Talon’s scripting API (see Talon Discord, GitHub, or release notes).

---

End of instructions — ask for feedback and I'll iterate on any missing specifics.
