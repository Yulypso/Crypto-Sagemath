#!/usr/bin/env sage

from sage.all import *

# order of a group g in G

p = 7
F = GF(p)  # mod p
g = F(primitive_root(p))  # get one generator

print("p:", p)
print("generator of p selected:", g)
# if p is prime, phi(p) = p-1
print("if p is prime, phi(p) = p-1 =", euler_phi(p))

# if p is prime => groupe cyclique ordre phi(p) = p-1
print("nb generators:", euler_phi(euler_phi(p)), "\n")

# ----

# pour déterminer l'ordre multiplicatif de 4 modulo 7, nous calculons 4^2 = 16 ≡ 2 (modulo 7), donc 4^3 ≡ 4×2 = 8 ≡ 1 (modulo 7), donc ord7(4) = 3.
p = 7
g = F(4)  # get one generator
print("order of 4 mod 7:", g.multiplicative_order())
