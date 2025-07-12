# find the largest number from the array of numbers
# Find the largest number in an array   

def largest(arr):
    if not arr:
        return None
    m = arr[0]  # Initialize the largest number with the first element
    for i in arr:
        if i > arr[0]:
            m = i
    return m

# Example usage
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(largest(arr))  # Output: 10

# write a code without using function and find the first and second largest number from the array of numbers
# Find the first and second largest number in an array

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
if len(arr) < 2:
    print("Array must contain at least two elements")
else:
    max_num = arr[0]
    second_max = arr[0]
    for i in arr:
        if i > max_num:
            second_max = max_num
            max_num = i
        elif i > second_max and i != max_num:
            second_max = i 
print("First largest number:", max_num)  # Output: 10
print("Second largest number:", second_max)  # Output: 9