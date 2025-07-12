# 1/1! + 1/2! + 1/3! + ... + 1/10!
# program to calculate the sum of the series 1/1! + 1/2! + 1/3! + ... + 1/10!

def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)
    
def sum_series(n):
    sum = 0
    for i in range(1, n + 1):
        sum += 1 / factorial(i)
    return sum

n = int(input())
print("{:.2f}".format(sum_series(n)))
