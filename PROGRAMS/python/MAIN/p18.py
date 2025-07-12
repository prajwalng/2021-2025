# Convert binary to decimal and vise versa

binary = input("Enter a binary number: ")
decimal = int(binary, 2)
print(f"Decimal equivalent of binary {binary} is {decimal}")

decimal_number = int(input("Enter a decimal number: "))
binary = bin(decimal_number)[2:]  # Convert to binary and remove the '0b' prefix
print(f"Binary equivalent of decimal {decimal_number} is {binary}")

# another way to convert binary to decimal
def binary_to_decimal(binary_str):
    return int(binary_str, 2)

def decimal_to_binary(decimal_num):
    return bin(decimal_num)[2:]

# Main program
print("1. Binary to Decimal")
print("2. Decimal to Binary")

choice = input("Choose conversion (1 or 2): ")

if choice == '1':
    binary_input = input("Enter a binary number: ")
    decimal_output = binary_to_decimal(binary_input)
    print("Decimal:", decimal_output)

elif choice == '2':
    decimal_input = int(input("Enter a decimal number: "))
    binary_output = decimal_to_binary(decimal_input)
    print("Binary:", binary_output)

else:
    print("Invalid choice. Please enter 1 or 2.")
