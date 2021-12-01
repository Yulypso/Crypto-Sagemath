#!/usr/bin/env sage

from sage.all import *

print("Signature El Gamal")

p = next_prime(2 ^ 100+8479783443)
# p = random_prime(2^100)
q = p-1

print("p = ", p)
print("q = ", q)

F = GF(p)
g = F(primitive_root(p))
print("générateur g = ", g)

x = F(ZZ.random_element(q))
y = g ^ x
print("Alice : ma clef secrete est x =", x, " et ma clef publique est y =", y)

k = F(ZZ.random_element(q))
while gcd(k, q) != 1:
    print(k, " pas premier avec ", q)
    k = F(ZZ.random_element(q))
Hm = F(ZZ.random_element(q))

r = g ^ k
s = (Hm-x*r)/k
# s = Mod( (Hm-x*r), q )/Mod(k, q)
print("The signature is r =", r, " et s =", s)

print("Checking :")
if(r > 0 and r < p and s > 0 and s < p-1 and g ^ Hm == (y ^ r)*r ^ s, p):
    # if(g^Hm == (y^r)*r^s, p):
    print("The signature is valid")
else:
    print("The signature is invalid")

print(Mod(g ^ Hm, p) == Mod((y ^ r)*r ^ s, p))
