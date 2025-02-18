from talon import Module
mod = Module()

@mod.capture(rule='hello <word>')
def testing_captures(m) -> str:
    'capture a word and return it in lower case'
    print('testing_captures:', m)
    return 'HELLO ' + str(m.word).upper()

# In Talon, you can use various symbols in capture rules to define patterns. Here are some common symbols you can use:

# - `<word>`: Matches a single word.
# - `<phrase>`: Matches a sequence of words.
# - `<number>`: Matches a number.
# - `<user.text>`: Matches any text.
# - `<user.letter>`: Matches a single letter.
# - `<user.ordinal>`: Matches an ordinal number (e.g., first, second).
# - `<user.digit>`: Matches a single digit.

# For example:

# ```python


# @mod.capture(rule='hello <phrase>')
# def capture_phrase(m):
#     return 'HELLO ' + ' '.join(m.phrase).upper()

# @mod.capture(rule='number <number>')
# def capture_number(m):
#     return f'NUMBER {m.number}'
# ```

# You can also define custom captures in your Talon script.

