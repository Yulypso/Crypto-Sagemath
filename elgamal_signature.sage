#!/usr/bin/env sage

from sage.all import *

print("Signature El Gamal")

# p = next_prime(2^100+8479783443)
p = random_prime(2 ^ 100)
q = p-1

print("p = ", p)
print("q = ", q)

# F = GF(p)

# g = F(primitive_root(p))
g = Mod(primitive_root(p), p)

print("générateur g = ", g)

x = Mod(ZZ.random_element(q), q)

y = g ^ x

print("Alice : ma clef secrete est x =", x, " et ma clef publique est y =", y)

k = Mod(ZZ.random_element(q), q)

while gcd(k, q) != 1:
    print(k, " pas premier avec ", q)
    k = Mod(ZZ.random_element(q), q)

Hm = Mod(ZZ.random_element(q), q)

r = g ^ k
s = Mod((Hm-x*Integer(r))/k, q)
# s = Mod( (Hm-x*Integer(r)), q )/Mod(k, q)

print("The signature is r =", r, " et s =", s)

print("Checking :")

if(Integer(r) > 0 and Integer(r) < Integer(p) and Integer(s) > 0 and Integer(s) < Integer(p-1) and g ^ Hm == (y ^ r)*r ^ s):
    # if(g^Hm == (y^r)*r^s):
    print("The signature is valid")
else:
    print("The signature is invalid")
