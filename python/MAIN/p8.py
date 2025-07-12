# Generate Fibonacci series up to N terms

n = int(input())
if n == 1:
    fib = [0]
elif n == 2:
    fib = [0, 1]
else:
    fib = [0, 1]
    for i in range(2, n):
        fib.append(fib[i - 1] + fib[i - 2])

print(','.join(map(str, fib)))

print(*fib, sep = "\n")