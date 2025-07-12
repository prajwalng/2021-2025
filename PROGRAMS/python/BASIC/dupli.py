# remove the duplicate array
# Remove duplicates from a list while maintaining order

def remove_duplicate(arr):
    s = set()
    result = []
    for i in arr:
        if i not in s:
            s.add(i)
            result.append(i)
    return result

# Example usage
arr = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
print(remove_duplicate(arr))  # Output: [1, 2, 3, 4, 5]
print()
print(','.join(map(str, remove_duplicate(arr))))