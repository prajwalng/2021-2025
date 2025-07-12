# print Pascal's Triangle

from math import comb

def print_pascals_triangle(n):
    for i in range(n):
        print(' ' * (n - i - 1), end='')  # Print leading spaces for alignment
        for j in range(i + 1):
            print(comb(i, j), end=' ')
        print()

# This uses " " * (n - i) to push each row toward the center, creating the triangle shape. You can even play with spacing (" " vs " ") for wider or narrower formatting.

#The function math.comb(i, j) in Python returns the number of ways to choose j items from a set of i items without repetition and without order

n = int(input())
print_pascals_triangle(n)
