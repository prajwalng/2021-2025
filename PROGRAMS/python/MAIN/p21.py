# Count even and odd digits in a number

n = int(input())
even = 0
odd = 0
for i in range(n):
    if i % 2 == 0:
        even += 1
    else:
        odd += 1

print(f"Even: {even}, Odd: {odd}")
