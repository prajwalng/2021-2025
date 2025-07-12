#  Remove all special characters from a string

import re

def remove_special_character(s):
    return re.sub(r'[^A-Za-z0-9]', '', s)

# ^ means start of string, [^A-Za-z0-9] means any character
# that is not a letter or a number, and re.sub() replaces all

S = input()
print(remove_special_character(S))
