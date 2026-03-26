# talon_date_parser.py
# Place this in your Talon user directory
# Usage: Say phrases like "twenty first of March twenty twenty six" and it will output "21/03/2026"

import re
from talon import Module, actions, app

mod = Module()

# Map spoken ordinals and numbers to digits
day_map = {
    "first": 1, "second": 2, "third": 3, "fourth": 4, "fifth": 5, "sixth": 6, "seventh": 7, "eighth": 8, "ninth": 9, "tenth": 10,
    "eleventh": 11, "twelfth": 12, "thirteenth": 13, "fourteenth": 14, "fifteenth": 15, "sixteenth": 16, "seventeenth": 17, "eighteenth": 18, "nineteenth": 19, "twentieth": 20,
    "twenty first": 21, "twenty second": 22, "twenty third": 23, "twenty fourth": 24, "twenty fifth": 25, "twenty sixth": 26, "twenty seventh": 27, "twenty eighth": 28, "twenty ninth": 29, "thirtieth": 30, "thirty first": 31
}

month_map = {
    "january": 1, "february": 2, "march": 3, "april": 4, "may": 5, "june": 6,
    "july": 7, "august": 8, "september": 9, "october": 10, "november": 11, "december": 12
}

def parse_year(words):
    # Handles years like "twenty twenty six" or "two thousand twenty six"
    text = " ".join(words)
    match = re.search(r"(twenty|two thousand) (\d{1,2})", text)
    if match:
        base = 2000
        year = int(match.group(2))
        return base + year
    # fallback: try to find a 4-digit year
    for word in words:
        if word.isdigit() and len(word) == 4:
            return int(word)
    return None

@mod.action_class
class Actions:
    def insert_spoken_date(day: str, month: str, year: str):
        """Insert a date spoken as words in dd/mm/yyyy format"""
        day_num = day_map.get(day.lower(), None)
        month_num = month_map.get(month.lower(), None)
        year_num = parse_year(year.split())
        if day_num and month_num and year_num:
            date_str = f"{day_num:02d}/{month_num:02d}/{year_num}"
            actions.insert(date_str)
        else:
            app.notify("Could not parse spoken date")
