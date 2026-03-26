# Date entry commands using day, month, year lists

# Insert date as dd/mm/yyyy
testing <user.day> <user.month> <user.year>:
    user.insert_date_formatted(day, month, year)

# Insert date as ISO format yyyy-mm-dd
date <user.day> <user.month> <user.year> iso:
    user.insert_date_formatted_iso(day, month, year)

# Quick aliases for today's date
date today: user.enter_date_function()
date now: user.enter_date_function()
