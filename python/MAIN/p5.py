# FIND THE SECOND LARGEST NUMBER IN AN ARRAY

arr = [12, 35, 1, 10, 34, 1]
# Find the second largest number in the array
second_largest = sorted(arr, reverse=True)[1]
print(second_largest)


# Another method to find the second largest number in an array
arr = [12, 35, 1, 10, 34, 1]
first = second = float('-inf')

for num in arr:
    if num > first:
        second = first
        first = num
    elif num > second and num != first:
        second = num

print(second)
