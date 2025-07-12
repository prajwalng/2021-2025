# Sum of digits of a number

# FIND THE SUM OF DIGITS OF A NUMBER

def sum_of_digits(n):
    if n < 0:
        n = -n # Make n positive if it is negative
    if n == 0:
        return 0
    else:
        return n % 10 + sum_of_digits(n // 10)
n = int(input()) 
print(sum_of_digits(n))
