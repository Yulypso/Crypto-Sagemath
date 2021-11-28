#!/usr/bin/env sage

from sage.all import *

p = next_prime(203)
print("p = ", p)
print("p est un nombre premier: ", p in Primes())

F = GF(p)
print("Puissances de la première colonne modulo", p)
for g in range(1, p): 
    for k in range(1, p):
        if F(g) ^ k <= 9:
            print(F(g) ^ k, end = "  ")
        else:
            print(F(g) ^ k, end = " ")
    print()

g = F(primitive_root(p))
print("Nombre de générateurs = ", euler_phi(p-1))
print("Un Générateur = ", g)
for k in range(1,p):
    print(g,"^", k, "=", F(g)^k)

print("Quels sont les autres générateurs ?")