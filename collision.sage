#!/usr/bin/env sage

from sage.all import *

# Question

N = []

for i in range(10):
    p = random_prime(20)
    q = random_prime(20)
    N.append(p * q)

print(N)

# Solving

for i in range(0, len(N)):
    for j in range(0, len(N)):
        if N[i] != N[j]:
            print("N1:", N[i], "N2:", N[j], "=>", gcd(N[i], N[j]),
                  "|", factor(N[i]), "|", factor(N[j]))

# find gcd(N1, N2) = p such as Ni= p * q

# Example:
# N1: 15 N2: 51 => 3 | 3 * 5 | 3 * 17
