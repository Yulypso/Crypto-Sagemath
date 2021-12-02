#!/usr/bin/env sage

from sage.all import *

p = 31
print("Les générateurs modulo", p)

generators = []

F = GF(p)
for g in range(1, p):
    generated = 0
    for k in range(1, p):
        gen = F(g) ^ k
        if (gen == 1 and k != p-1):
            break
        else:
            generated += 1
    if generated == p - 1:
        generators.append(g)

print(generators)
