#!/usr/bin/env sage

from sage.all import *

# Q-10. Donnez tous les générateurs modulo 37, c’est-à-dire les éléments de {1, 2, . . . , 36} qui engendrent tout le groupe multiplicatif.

p = 37
print("Nombre de générateurs = ", euler_phi(p-1))

generators = []
generated = []

F = GF(p)
for g in range(1, p):
    for k in range(1, p):
        gen = F(g) ^ k
        if (gen == 1 and k != p-1):
            generated = []
            break
        else:
            generated.append(gen)
    if len(generated) == p - 1:
        generators.append(g)
    generated = []
    
print(generators)
