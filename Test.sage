#!/usr/bin/env sage -python3

# First prime numbers < 200
# 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67,
# 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149,
# 151, 157, 163, 167, 173, 179, 181, 191, 193, 197 et 199

from sage.all import *

print(Permutations(5))
print(factor(200))

a, b = 2776, 2452

print(gcd(2776, 2452))
print(lcm(2776, 2452))

bezout = xgcd(a, b)
print(bezout)
g = bezout[0]
x = bezout[1]
y = bezout[2]
print(g == a*x + b*y)
