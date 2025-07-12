# Write a simple program for sorting an array.
# The program should take an array of integers as input and return the sorted array.
# Calculate the time complexity and space complexity of the algorithm.
def sorting(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
# Test the function
arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = sorting(arr)
print("Sorted array is:", sorted_arr)