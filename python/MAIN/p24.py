#  Check if two strings are anagrams

def are_anagrams(str1, str2):
    # Remove spaces and convert to lowercase
    str1 = str1.replace(" ", "").lower()
    str2 = str2.replace(" ", "").lower()
    
    # Sort the characters and compare
    return sorted(str1) == sorted(str2)

str1 = "Listen"
str2 = "Silent"
print(are_anagrams(str1, str2))  # Output: True

s1 = "Anagram"
s2 = "Anagram"
print("Anagram?", are_anagrams(s1, s2))  # Output: True

s1 = "Listen"
s2 = "Anagram"
print("Anagram?", are_anagrams(s1, s2))  # Output: False