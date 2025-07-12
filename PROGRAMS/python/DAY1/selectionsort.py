# Write a program to implement selection sort algorithm.
# Calculate the time complexity and space complexity of the algorithm.

def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_index = i
        for j in range(i + 1, n):
            if arr[j] < arr[min_index]:
                min_index = j
        arr[i], arr[min_index] = arr[min_index], arr[i]
    return arr
arr = [64, 25, 12, 22, 11]
sorted_arr = selection_sort(arr)
print("Sorted array is:", sorted_arr)

# Time Complexity: O(n^2) in the worst case
# Space Complexity: O(1) as it sorts in place
# Note: The time complexity is O(n^2) because of the nested loops.
# The space complexity is O(1) because it uses a constant amount of space for the sorting process.

# Write a program to implement binary search algorithm.
def binary_search(arr, x):
    low = 0
    high = len(arr) - 1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            low = mid + 1
        else:
            high = mid - 1
    return -1

arr = [4, 3, 2, 5, 7, 9, 1, 6, 8]
arr.sort()
x = int(input("Enter the element to search: "))
result = binary_search(arr, x) 
if result != -1:
    print(f"Element found at index: {result}")
else:
    print("Element not found in the array")

# Time complexity: O(log n)
# Space complexity: O(1) for iterative implementation
# Note: The iterative implementation of binary search has a time complexity of O(log n) because it divides the search space in half with each iteration.
# The space complexity is O(1) because it uses a constant amount of space for the variables used in the search process.