# Count the numbers of vowels in a string

def count_vowels(s):
    vowels = 'aeiouAEIOU'
    count = 0
    for char in s:
        if char in vowels:
            count += 1
    return count

# Test the function
test_string = input()
print(count_vowels(test_string))