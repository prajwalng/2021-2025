# print prime numbers in a range

n1 = int(input())
n2 = int(input())

prime = []

def is_prime(n):
    if n < 2:
        return False
    elif n == 2:
        return True
    else:
        for i in range(2, n):
          if n % i == 0:
              return False
        return True
    
for i in range(n1, n2 + 1):
    if is_prime(i):
        prime.append(i)
print(*prime, sep="\n")

print(' '.join(map(str, prime)))