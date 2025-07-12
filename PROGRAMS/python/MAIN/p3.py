# Check if a number is a palindrome

n = int(input())
temp = n
rev = 0
while n > 0:
    digit = n % 10
    rev = rev * 10 + digit
    n = n // 10
if temp == rev:
    print("Yes. It is a palindrome.", end=' ')
else:
    print("No. It is not a palindrome.", end=' ')
    print()
        
print(temp, end = "\n")

# Output: Yes. It is a palindrome. the original number is 121
# Output: No. It is not a palindrome. The reverse of the number is 121 )
# Example usage: if n = 121, it will print "Yes. It is a palindrome. the original number is 121"
# Example usage: if n = 123, it will print "No. It is not a palindrome. The reverse of the number is 321 the original number is 123"

# How to print the value one below the another provide an example statement to print the value one below the another including numbers
# You can use the `print` function with a newline character `\n` to print values one below the other.
# For example, you can use:
# Example: print("Hello\nWorld") will print:
# Hello
# World

num = int(input())
num1 = str(num)
num2 = num1[::-1]
if num1 == num2:
    print("Yes. It is a palindrome.", end=' ')
else:
    print("No. It is not a palindrome.", end=' ')