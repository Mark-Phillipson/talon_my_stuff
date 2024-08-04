keyword {user.keywords}: insert(user.keywords)
sequel {user.sql_keywords}: insert(user.sql_keywords)
attribute {user.html_attributes}:
    insert(user.html_attributes)
    insert(' ')
    key(left left)
