#  Rotate an array left/right

def rotate_array(arr, direction):
    if direction == 'left':
        return arr[1:] + arr[:1]
    elif direction == 'right':
        return arr[-1:] + arr[:-1]
    else:
        return "Inavalid direction. Please enter 'left' or 'right'."
    
arr = [1, 2, 3, 4, 5]
print(rotate_array(arr, 'left'))  # Output: [2, 3, 4, 5, 1]
print(rotate_array(arr, 'right'))  # Output: [5, 1, 2, 3, 4]
