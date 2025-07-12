# Write a program to implement linear search algorithm.
# Calculate the time complexity and space complexity of the algorithm.
def linear_search(arr, x):
    for i in range(len(arr)):
        if arr[i] == x:
            return i
    return -1

arr = [4, 3, 2, 5, 7, 9, 1, 6, 8]
x = int(input("Enter the element to search: "))
result = linear_search(arr, x)
if result != -1:
    print(f"Element found at index: {result}") 
else:
    print("Element not found in the array")

# Time complexity: O(n) in the worst case
# Space complexity: O(1) as it uses a constant amount of space
# Note: The linear search algorithm checks each element in the array sequentially until it finds the target element or reaches the end of the array.
# This makes it inefficient for large datasets compared to more advanced search algorithms like binary search.