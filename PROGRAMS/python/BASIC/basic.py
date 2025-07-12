# write a program that prints the numbers from 1 to 100.
# type: ignore

def print_numbers(n):
    for i in range(1 , n + 1):
        print(i, end=' ' )
    print()  # Print a newline at the end
n = int(input("Enter a number: "))
print_numbers(n)    