# Reverse an array using 2-pointer

def reverse_array(arr):
    left = 0
    right = len(arr) - 1
    while left < right:
        arr[left], arr[right] = arr[right], arr[left]
        left = left + 1
        right -= 1
    return arr

# for example
arr = list(range(1, 11))  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(reverse_array(arr))

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(reverse_array(arr))  # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

arr = list(map(int, input().split())) 
print(' '.join(map(str, reverse_array(arr))))
