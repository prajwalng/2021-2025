# Given an array of integers and target sum, return the indices of the two numbers that add up to the target sum.
# Analyze the time and space complexity of the above problem.

def two_sum(n, t):
    for i in range(len(n)):
        for j in range(i + 1, len(n)):
            if n[i] + n[j] == t:
                return [i, j]
            return []
# Example usage:
n = [1, 2, 3, 4, 5]
t = 7
result = two_sum(n, t)
print(result)

# Time complexity: O(n^2)
# Space complexity: O(1)