# Find GCD(HCF) and LCM of two numbers

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

def lcm(a, b):
    return a * b // gcd(a, b)

# Input two numbers
a = int(input())
b = int(input())

# Calculate GCD and LCM
gcd_value = gcd(a, b)
lcm_value = lcm(a, b)

# Print the results
print(f"{gcd_value}")
print(f"{gcd_value} is a GCD of {a} and {b}")

print(f"{lcm_value}")
print(f"{lcm_value} is a LCM of {a} and {b}")

# in last
print(f"GCD of {a} and {b} is {gcd_value}")
print("LCM of {a} and {b} is", {lcm_value})

# Print both GCD and LCM in a single line
print(f"{gcd_value} {lcm_value}")
