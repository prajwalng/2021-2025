# Print ASCII values of characters

print(ord('A')) # Output: 65
# the function ord() returns the integer representing the Unicode
 
# another way to solve
print(ord('A') - 96) # Output: 1

# another way
print(ord('A') - 64) # Output: 1

# Another way
s = input()
for i in s:
    print(f"ASCII value of {i} is {ord(i)}")
