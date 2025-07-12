# 1 + 1/2 + 1/3 + 1/4 + ... + 1/10
# program to calculate the sum of the series 1 + 1/2 + 1/3 + ... + 1/10

def sum_series(n):
    total= 0
    for i in range (1, n + 1):
        total = total + 1/i
    return total

n = int(input())
print("{:.2f}".format(sum_series(n)))

