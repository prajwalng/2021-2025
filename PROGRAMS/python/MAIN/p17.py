# Remove vowels from a string

import re # Regular expression module
def remove_vowels(s): # re.sub() is a function that substitutes all parts of the string that match a pattern
    # Use regex to replace vowels with an empty string
    return re.sub(r'[aeiouAEIOU]', '', s) # where sub is used to replace the pattern with an empty string 

s = input()
print(remove_vowels(s))