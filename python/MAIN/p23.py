# Sum of even-position digits

# Sum of even-position digits in a number
def sum_even_digits(num):
    num_str = str(num)
    even_sum = 0
    for i in range(0, len(num_str), 2):  # Start from index 0 and step by 2
        even_sum += int(num_str[i])
    return even_sum

# Example usage
num = int(input("Enter a number: "))
print(f"Sum of even-position digits: {sum_even_digits(num)}")
print(f"Sum of digits at even indices (0-based): {sum_even_digits(num)}")

