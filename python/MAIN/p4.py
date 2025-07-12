# print a pyramid/star pattern

n = int(input())
for i in range(1, n + 1):
    print("* " * i, end='')
    print()

# print a reverse pyramid/star pattern

n = int(input())
for i in range(n + 1, 0, -1):
    for j in range(0, i - 1):
        print("* ", end='')
    print()
      # Optional: move to the next line after printing the stars