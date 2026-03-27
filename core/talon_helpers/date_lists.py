from talon import Module, actions

mod = Module()

# Declare lists in Talon grammar; values come from talon-list files
mod.list("day", "Ordinal and numeric day values (1-31)")
mod.list("month", "Month names and numeric values (1-12)")
mod.list("year", "Year values from 1964 to 2066")


@mod.action_class
class Actions:
    def insert_date_formatted(day: str, month: str, year: str):
        """Insert a formatted date from spoken day/month/year as dd/mm/yyyy"""
        day_padded = day.zfill(2)
        month_padded = month.zfill(2)
        date_str = f"{day_padded}/{month_padded}/{year}"
        actions.insert(date_str)

    def insert_date_formatted_us(day: str, month: str, year: str):
        """Insert a formatted date from spoken day/month/year as mm/dd/yyyy"""
        day_padded = day.zfill(2)
        month_padded = month.zfill(2)
        date_str = f"{month_padded}/{day_padded}/{year}"
        actions.insert(date_str)

    def insert_date_formatted_iso(day: str, month: str, year: str):
        """Insert a formatted date from spoken day/month/year as yyyy-mm-dd"""
        day_padded = day.zfill(2)
        month_padded = month.zfill(2)
        date_str = f"{year}-{month_padded}-{day_padded}"
        actions.insert(date_str)





