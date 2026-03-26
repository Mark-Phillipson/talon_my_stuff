from talon import Module, Context, actions

mod = Module()
ctx = Context()

# Declare lists
mod.list("day", "Ordinal and numeric day values (1-31)")
mod.list("month", "Month names and numeric values (1-12)") 
mod.list("year", "Year values from 2016 to 2036")

# Day values
day_map = {
    "first": "1", "second": "2", "third": "3", "fourth": "4", "fifth": "5",
    "sixth": "6", "seventh": "7", "eighth": "8", "ninth": "9", "tenth": "10",
    "eleventh": "11", "twelfth": "12", "thirteenth": "13", "fourteenth": "14",
    "fifteenth": "15", "sixteenth": "16", "seventeenth": "17", "eighteenth": "18",
    "nineteenth": "19", "twentieth": "20", "twenty first": "21", "twenty second": "22",
    "twenty third": "23", "twenty fourth": "24", "twenty fifth": "25",
    "twenty sixth": "26", "twenty seventh": "27", "twenty eighth": "28",
    "twenty ninth": "29", "thirtieth": "30", "thirty first": "31",
    "one": "1", "two": "2", "three": "3", "four": "4", "five": "5",
    "six": "6", "seven": "7", "eight": "8", "nine": "9", "ten": "10",
    "eleven": "11", "twelve": "12", "thirteen": "13", "fourteen": "14",
    "fifteen": "15", "sixteen": "16", "seventeen": "17", "eighteen": "18",
    "nineteen": "19", "twenty": "20", "twenty one": "21", "twenty two": "22",
    "twenty three": "23", "twenty four": "24", "twenty five": "25",
    "twenty six": "26", "twenty seven": "27", "twenty eight": "28",
    "twenty nine": "29", "thirty": "30", "thirty one": "31"
}

# Month values
month_map = {
    "january": "1", "february": "2", "march": "3", "april": "4",
    "may": "5", "june": "6", "july": "7", "august": "8",
    "september": "9", "october": "10", "november": "11", "december": "12"
}

# Year values
year_map = {
    "twenty sixteen": "2016", "twenty seventeen": "2017", "twenty eighteen": "2018",
    "twenty nineteen": "2019", "twenty twenty": "2020", "twenty twenty one": "2021",
    "twenty twenty two": "2022", "twenty twenty three": "2023", "twenty twenty four": "2024",
    "twenty twenty five": "2025", "twenty twenty six": "2026", "twenty twenty seven": "2027",
    "twenty twenty eight": "2028", "twenty twenty nine": "2029", "twenty thirty": "2030",
    "twenty thirty one": "2031", "twenty thirty two": "2032", "twenty thirty three": "2033",
    "twenty thirty four": "2034", "twenty thirty five": "2035", "twenty thirty six": "2036"
}

# Bind to context - this makes them available to talon files
ctx.lists["user.day"] = day_map
ctx.lists["user.month"] = month_map
ctx.lists["user.year"] = year_map

@mod.action_class
class Actions:
    def insert_date_formatted(day: str, month: str, year: str):
        """Insert a formatted date from spoken day/month/year as dd/mm/yyyy"""
        # Zero-pad the day and month values
        day_padded = day.zfill(2)
        month_padded = month.zfill(2)
        date_str = f"{day_padded}/{month_padded}/{year}"
        actions.insert(date_str)

    def insert_date_formatted_iso(day: str, month: str, year: str):
        """Insert a formatted date from spoken day/month/year as yyyy-mm-dd"""
        # Zero-pad the day and month values
        day_padded = day.zfill(2)
        month_padded = month.zfill(2)
        date_str = f"{year}-{month_padded}-{day_padded}"
        actions.insert(date_str)




