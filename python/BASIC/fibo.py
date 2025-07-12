# Fibonacci sequence generator

def fibonacci(n):
    fib = [0, 1]
    for i in range(2,n):
        fib.append(fib[i-1] + fib[i-2]) # Calculate the next Fibonacci number
    return fib[:n]

n=int(input())
print(fibonacci(n))
print(','.join(map(str, fibonacci(n))))
# Example usage: if n = 10, it will print the first 10 Fibonacci numbers   
# Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# Note: The Fibonacci sequence starts with 0 and 1, so the first two numbers are 0 and 1.
# The function returns a list of the first n Fibonacci numbers. 
# If n is less than or equal to 0, it will return an empty list.
# If n is 1, it will return [0]. If n is 2, it will return [0, 1].
# If n is greater than 2, it will return the Fibonacci sequence up to the nth number.
# The function uses a loop to calculate the Fibonacci numbers iteratively, which is more efficient than using recursion for larger values of n.
# The time complexity of this function is O(n), and the space complexity is also O(n).

# how to remove the square brackets from the output
# You can modify the print statement to join the elements of the list into a string without brackets
# print(' '.join(map(str, fibonacci(n))))
# split by ,
