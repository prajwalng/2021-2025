# 1 - 1/2 + 1/3 - 1/4 + ... + 1/20
# program to calculate the sum of the series 1 - 1/2 + 1/3 - 1/4 + ... + 1/20

def sum_series(n):
    sum = 0
    for i in range(1, n+1):
        if i % 2 == 0:
            sum -= 1/i
        else:
            sum += 1/i
    return sum
        
n = int(input())
print("{:.2f}".format(sum_series(n)))