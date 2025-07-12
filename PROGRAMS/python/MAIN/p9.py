# Check if a number is Armstrong

n = int(input())

count = len(str(n))
sum = 0

for i in str(n):
    sum += int(i) ** count  # Raise each digit to the power of the number of the digits

if sum == n:
    print("{} is an Armstrong number".format(n))
else:
    print("{} is not an Armstrong number".format(n))

# Another way to check if a number is Armstrong
def is_armstrong(n):
    d = str(n) # d is the string representation of the number
    p = len(d) # p is the power to which each digit is raised
    s = 0 # s is the sum of the digits
    for i in d:
        s = s + int(i) ** p
    return s == n

n = int(input())
if is_armstrong(n):
    print("{} is an Armstrong number".format(n))
else:
    print("{} is not an Armstrong number".format(n))
