import math

def compute_logarithm():
    base = 0.123456789
    exponent = 987654421.0
    result = math.log(base ** exponent)
    return result

print(compute_logarithm())  # Output: -inf

import math

def compute_exponential_factorial():
    factorial_9 = math.factorial(9)
    result = math.exp(factorial_9)
    return result

print(compute_exponential_factorial())  # Output: inf

import math

def compute_logarithm():
    base = 0.123456789
    exponent = 987654421.0
    result = math.log(base ** exponent)
    return result

def compute_exponential_factorial():
    factorial_9 = math.factorial(9)
    result = math.exp(factorial_9)
    return result

print(compute_exponential_factorial())  # Output: inf
print(compute_logarithm())  # Output: -inf