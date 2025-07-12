# Find duplicate elements in an array

def duplicate(arr):
    s = set()
    duplicates = []
    for i in arr:
        if i in s:
            if i not in duplicates:
                duplicates.append(i)
                s.add(i)
        else:
            s.add(i)
    return duplicates

# Example

arr = list(map(int, input().split()))
print(' '.join(map(str, duplicate(arr))))