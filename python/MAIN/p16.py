# Count the frequency in a string
def count_frequency(s):
    f = {} # to store frequency
    for i in s:
        if i in f:
            f[i] +=1
        else:
            f[i] = 1
    return f

# Example
#s = input().strip() # strip is used to remove leading and trailing whitespace
s = input()
print(count_frequency(s), sep="\n")
print(*count_frequency(s), sep="\n")

# Output the frequency in a sorted order
for k in sorted(count_frequency(s).keys()):
    print(f"{k}: {count_frequency(s)[k]}")

# another way to print
s = input().strip()
freq = count_frequency(s)

for char, count in freq.items():
    print(f"{char}: {count}")


## Completely different methos to solve

from collections import Counter
s = input()
print(Counter(s))

from collections import Counter

s = "hello world"
frequency = Counter(s)

for char, count in frequency.items():
    print(f"{char}: {count}")
