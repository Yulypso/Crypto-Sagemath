#!/usr/bin/env sage

from sage.all import *

# How would you detect if an RSA modulus N=pq is an Infineon number?
# p = k * M + (65537 ^ a % 30)
# q = k * M + (65537 ^ a % 30)

# question
M = 2*3*5   # is public
k = 0       # is public ?
a_p = 3
a_q = 2

p = k * M + power_mod(65537, a_p, M)
q = k * M + power_mod(65537, a_q, M)
p = next_prime(13)
q = next_prime(17)

# solving
# if Infineon number, we don't need to check from 0 to M >= N^(0.4)
# but only from M' >= N^(1/4)

N = 17  # int(Mod(p * q, M))
M_prime = N  # int(N ^ (1/4)) + 20

check = []
detected = 0

print(f"Is modulus N = {N} an Infineon Number ?")
for a in range(1, M_prime):
    if power_mod(65537, a, N) in check and power_mod(65537, a, N) != 1 and power_mod(65537, a, N) != 0 and not detected:
        print(
            f"{power_mod(65537, a, N)} already in {check}. Infineon prime detected => N = {N}")
        print(f"p and q might be in:", end=" ")
        for b in range(1, a):
            print(f"{factor(k * M + power_mod(65537, b, M))}", end=" ")
        detected = 1
    check.append(power_mod(65537, a, N))

if not detected:
    print(f"\nNo Infineon prime detected")
else:
    print(f"\nPowers of 65537 for N={N} checked:", check)

# if Infineon modulo gives multiple times a power of 65537, it is an Infineon N
# Else we should have random primes.


# Powers of 65537 modulo small primes:
# Mod 11 : 1 and 10
# Mod 13: 1, 3, 4, 9, 10 and 12
# Mod 17: 1, 2, 4, 8, 9, 13, 15 and 16
# Mod 19: 1, 4, 5, 6, 7, 9, 11, 16 and 17
