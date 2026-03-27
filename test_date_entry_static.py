from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parent
HELPERS_DIR = REPO_ROOT / "core" / "talon_helpers"


def _read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def _list_entries(path: Path) -> list[str]:
    lines = _read(path).splitlines()
    return [line.strip() for line in lines[2:] if line.strip() and not line.startswith("#")]


def test_date_entry_uses_list_syntax_for_custom_lists():
    content = _read(HELPERS_DIR / "date_entry.talon")

    assert "date {user.day} {user.month} {user.year}:" in content
    assert "date {user.day} {user.month} {user.year} iso:" in content
    assert "<user.day>" not in content
    assert "<user.month>" not in content
    assert "<user.year>" not in content


def test_date_today_commands_insert_text():
    content = _read(HELPERS_DIR / "date_entry.talon")

    assert "date today: insert(user.enter_date_function())" in content
    assert "date now: insert(user.enter_date_function())" in content


def test_date_us_command_exists():
    content = _read(HELPERS_DIR / "date_entry.talon")

    assert "date {user.day} {user.month} {user.year} us:" in content


def test_date_list_files_have_expected_headers_and_counts():
    expectations = {
        "day.talon-list": ("list: user.day", 62),
        "month.talon-list": ("list: user.month", 12),
        "year.talon-list": ("list: user.year", 103),
    }

    for filename, (header, expected_count) in expectations.items():
        path = HELPERS_DIR / filename
        lines = _read(path).splitlines()
        assert lines[0].strip() == header
        assert lines[1].strip() == "-"
        assert len(_list_entries(path)) == expected_count