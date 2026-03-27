# Community PR Instructions - Date Entry Feature

This file is meant for Community Copilot to use as the PR description template for the community repository.

## Summary
Add new voice date entry commands with a centralized date format setting and extended year range.

### Features implemented
- New voice commands in `core/talon_helpers/date_entry.talon`:
  - `date {user.day} {user.month} {user.year}` (default dd/mm/yyyy)
  - `date {user.day} {user.month} {user.year} us` (mm/dd/yyyy)
  - `date {user.day} {user.month} {user.year} iso` (yyyy-mm-dd)
  - `date today` / `date now` (relative, format from setting)
  - `date tomorrow`
  - `date yesterday`
  - `date next {user.weekday}` (relational weekday)
  - `date next month`
  - `date next year`
  - `date last year`

- Centralized formatting in `core/talon_helpers/date_lists.py`:
  - `settings.user.date_format` supports `uk` (default), `us`, `iso`
  - action methods: `insert_date_formatted`, `insert_date_formatted_us`, `insert_date_formatted_iso`,
    `insert_date_today`, `insert_date_tomorrow`, `insert_date_yesterday`, `insert_date_next_weekday`

- Year list expanded to 1964-2066 in `core/talon_helpers/year.talon-list`.
- All list data are in `.talon-list` files (community format):
  - `day.talon-list`, `month.talon-list`, `year.talon-list`, `weekdays.talon-list`

## Files to include in PR
- `core/talon_helpers/date_entry.talon`
- `core/talon_helpers/date_lists.py`
- `core/talon_helpers/year.talon-list`
- `core/talon_helpers/weekdays.talon-list`
- existing/did not change: `day.talon-list`, `month.talon-list`

## Local test coverage
- `test_date_entry_static.py` (local development verification):
  - ensures syntax exists
  - validates list files and counts
  - validates relative date commands

## Verification commands
Use local venv:
```powershell
c:\Users\MPhil\AppData\Roaming\talon\user\mystuff\talon_my_stuff\.venv\Scripts\python.exe -m pytest -q test_date_entry_static.py
```
Expected: `6 passed`

## PR body template
### Title
Add date entry commands + date format setting + year range 1964-2066

### Description
- `date` base command for day/month/year with dd/mm default
- US format variant: `date ... us`
- ISO variant: `date ... iso`
- relative commands: `today`, `tomorrow`, `yesterday`, `next <weekday>`
- Setting `user.date_format` for global locale behavior
- Maintains community `.talon-list` list source pattern

### Testing
- Local unit test command line and pass status

### Note
- `test_date_entry_static.py` is local helper; can be adjusted to community test harness on request.
- Date format is controlled by Talon setting `user.date_format` (not voice command): set in `settings.talon` or UI to `uk`, `us`, or `iso`.

