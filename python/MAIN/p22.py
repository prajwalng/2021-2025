# Find the missing number in an array

def missing_number(arr, n):
    for i in range(1, n + 1):
        if i not in arr:
            return i
    return None

arr = [1, 2, 4, 5, 6]
n = int(input())
print(f"The missing number is: {missing_number(arr, n)}")

# another methos for n numbers

def missing_numbers(arr, n):
    missing = []
    for i in range(1, n + 1):
        if i not in arr:
            missing.append(i)
    return missing

# Example usage
arr = [1, 2, 4, 5, 7]
n = int(input("Enter the total range (n): "))
print("Missing numbers:", ' '.join(map(str, missing_numbers(arr, n))), sep = "\n")
print("Missing numbers:", *' '.join(map(str, missing_numbers(arr, n))), sep = "\n")
