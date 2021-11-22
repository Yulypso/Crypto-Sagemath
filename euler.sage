#!/usr/bin/env sage -python3

from sage.all import *

n = 923923

# First method
# Counts number of prime numbers from 1 to n
s = 0
for k in range(1, n):
    if(gcd(k, n) == 1):
        s += 1
print(s)

# Second method
s = euler_phi(n)
print(s)
