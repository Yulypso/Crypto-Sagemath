#!/usr/bin/env sage

from sage.all import *

print("Chiffrement El Gamal")

p = next_prime(2 ^ 100 + 8479783443)
print("p =", p)

F = GF(p)
g = F(primitive_root(p))
print("générateur g =", g)

x = randrange(p)  # secret de Alice
y = g ^ x  # calcul de la clé publique
print("Alice: ma clé secrète est x =", x, "et ma clé publique est y =", y)

m = randrange(p)
print("Le message est m =", m)

k = randrange(p - 1)  # secret de Bob
a = g ^ k  # one time key
print("Bob: ma one time key est k =", k, "et ma clé publique est a =", a)

# chiffrement du message m par Alice avec le secret de Bob
b = m * y ^ k  # y = g ^ x donc on a b = m * g ^ (xk)

print("Le chiffrement de m par Alice est b =", b)

# Bob pour déchiffrer doit connaître la clé secrete partagée
c = a ^ x  # sa clé publique calculée par son secret, puissance le secret de Alice
print("On dechiffre en", b / c)

# b / c = (m * y ^ k)/(a ^ x) = (m * g ^ xk)/(g ^ kx) = m
