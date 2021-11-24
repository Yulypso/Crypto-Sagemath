#!/usr/bin/env sage

from sage.all import *


# set_random_seed(0)

# p, q : Choose 2 prime numbers
p = random_prime(2 ^ 32)
print("p = ", p)
q = random_prime(2 ^ 32)
print("q = ", q)

# N: Encryption modulo
N = p * q
print("N = ", N)

# phi: Indicator value Euler
phi = (p - 1) * (q - 1)
# phi = euler_phi(N) # Same calculation
print("phi(N) = ", phi)

# e: Encryption exponent
# Search e until e is prime with phi
e = ZZ.random_element(phi)
while gcd(e, phi) != 1:
    print("\t-", e, "not prime with ", phi)
    e = ZZ.random_element(phi)
print("public exponent e = ", e)

# d: Decryption exponent
# d is the inverse of e mod phi(N) (Extended Euclidean algorithm)
d = ZZ(1 / Mod(e, phi))

print("Secret exponent d =", d)
print("d * e mod phi = ", Mod(d * e, phi))
print("public key (n, e) = (", N, ",", e,
      "); private key (n, d) = (", N, ",", d, ")\n")

# Select a message
m = randrange(N)
print("message m = ", m)

# Message encryption
c = power_mod(m, e, N)
print("encryption(m): c = m ^ e mod N =", c)

# Message decryption
m = power_mod(c, d, N)  # should be m again
print("decryption(c): m = c ^ d mod N =", m)
