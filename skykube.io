function calculate_e_to_the_power_of_9_factorial():
    factorial_9 = calculate_factorial(9)
    result = power_of_e(factorial_9)
    return result

function calculate_factorial(n):
    factorial = 1
    for i in range(1, n + 1):
        factorial = factorial * i
    return factorial

function power_of_e(exponent):
    result = e ** exponent
    return result