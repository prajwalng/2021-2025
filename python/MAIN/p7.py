# Check if a string is a pangram

import string

def is_pangram(s):
    alphabet = set(string.ascii_lowercase) # create a set of all lowercase letters
    s = s.lower()  # convert the string to loercase
    return alphabet <= set(s) # Check if all letters in the alphabet are in the string

# Example
s = "Python is a programming language that lets you work quickly"
print(is_pangram(s), s) # Output : False

s = "Python is easy to learn"
print(is_pangram(s)) # Output : False

s = "The quick brown fox jumps over the lazy dog"
print(is_pangram(s)) # Output : True

s = "Pack my box with five dozen liquor jugs"
print(is_pangram(s)) # Output : True

s = "The five boxing wizards jump quickly"
print(is_pangram(s)) # Output : True