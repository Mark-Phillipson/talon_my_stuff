# Date entry commands using day, month, year lists

# Insert date as dd/mm/yyyy
date {user.day} {user.month} {user.year}:
    user.insert_date_formatted(day, month, year)

# Insert date as US format mm/dd/yyyy
# (defaults remains dd/mm/yyyy for standard use)
date {user.day} {user.month} {user.year} us:
    user.insert_date_formatted_us(day, month, year)

# Insert date as ISO format yyyy-mm-dd
date {user.day} {user.month} {user.year} iso:
    user.insert_date_formatted_iso(day, month, year)

# Quick aliases for today's date
date today: insert(user.enter_date_function())
date now: insert(user.enter_date_function())
