# Write a program t implement insertion sort algorithm.
# Calculate the time complexity and space complexity of the algorithm.

def insertion_sort(arr):
    n = len(arr)
    for i in range(1, n):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

arr = [454, 341, 25, 122, 2, 11, 90]
sorted_arr = insertion_sort(arr)
print("Sorted array is:", sorted_arr)

# Time Complexity: O(n^2) in the worst case
# Space Complexity: O(1) as it sorts in place
# Note: The time complexity is O(n^2) because of the nested loops.