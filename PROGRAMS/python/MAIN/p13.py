# Replace spaces with hyphens in a string

def replace_spaces(s):
    return s.replace(' ', '-')

# Test the function
n = input()
print(replace_spaces(n))

# Another way to replace spaces with hyphens
def replace_spaces_alternative(s):
    result = []
    for char in s:
        if char == ' ':
            result.append('-')
        else:
            result.append(char)
    return ''.join(result)

# Test the alternative function
n = input()
print(replace_spaces_alternative(n))