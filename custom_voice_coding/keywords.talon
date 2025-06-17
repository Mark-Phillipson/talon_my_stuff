#code.language: csharp
#-
keyword {user.keywords}: insert(user.keywords)

attribute {user.html_attributes}:
    insert(user.html_attributes)
    insert(' ')
    key(left left)
