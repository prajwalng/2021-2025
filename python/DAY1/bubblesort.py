# Write a program to implement binary search algorithm.
# Calculate the time complexity and space complexity of the algorithm.

def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

arr = [64, 34, 25, 12, 22, 11, 90]
#arr.sort()
sorted_arr = bubble_sort(arr)
print("Sorted array is:", sorted_arr)

# Time Complexity: O(n^2) in the worst case
# Space Comeplexity: O(1) as it sorts in place
# Note: The time complexity is O(n^2) because of the nested loops.
# The space complexity is O(1) because it uses a constant amount of space for the sorting process.
# The algorithm is not efficient for large datasets.