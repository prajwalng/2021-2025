# Check for perfect number

def is_perfect(n):
    s = 0
    for i in range(1, n):
        if n % i == 0:
            s = s + i
            return s == n

n = int(input())

if is_perfect(n):
    print(f" Number {n} is a perfect number")
else:
    print(f"Number {n} is not a perfect number")