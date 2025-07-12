# Write a program to implement binary search algorithm.
# Also identify the time complexity and space complexity of the algorithm.

def binary_search(arr, low, high, x):
    if low > high:
        return -1
    else:
        mid = (low + high) // 2
        if x == arr[mid]:
            return mid
        elif x > arr[mid]:
            low = mid + 1
        else:
            high = mid - 1

arr = [4, 3, 2, 5, 7, 9, 1, 6, 8]
arr.sort()
x = int(input())
print(arr)
result = binary_search(arr, 0, len(arr)- 1, x)
if result != -1:
    print(result)
else:
    print("Not found in the array")

# Time complexity: O(log n)
# Space complexity: O(1) for iterative implementation
# Note: The above implementation is recursive, which has a space complexity of O(log n) due to the call stack.