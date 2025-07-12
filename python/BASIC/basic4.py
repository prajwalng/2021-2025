# write a program to generate a pattern of any size or shape 
# using nested loops.
# type: ignore  

# Example: Generate a right-angled triangle pattern

def generate_triangle_pattern(n):
    for i in range(1, n + 1):
        for j in range(1, i + 1):
            print(j, end=' ')
        print()
n = 10
generate_triangle_pattern(n)

# Example: Generate a square pattern
def generate_square_pattern(n):
    for i in range(n):
        for j in range(n):
            print('*', end=' ')
        print()

n = 5
generate_square_pattern(n)

# Example: Generate a pyramid pattern
def generate_pyramid_pattern(n):    
    for i in range(n):
        print(' ' * (n - i - 1), end='')  # Print leading spaces
        for j in range(i + 1):
            print('*', end=' ')
        print()

n = 4
generate_pyramid_pattern(n)

# Example: Generate a equilateral triangle pattern

def equilateral_triangle_pateern(n):
    for i in range(n):
        print(' ' *(n - i - 1), end=' ')
        for j in range(2 * i + 1):
            print('*', end=' ')
        print()

n = 9
equilateral_triangle_pateern(n)