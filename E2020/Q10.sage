#!/usr/bin/env sage

from typing import Generator
from sage.all import *

# Q-10. Donnez tous les générateurs modulo 37, c’est-à-dire les éléments de {1, 2, . . . , 36} qui engendrent tout le groupe multiplicatif.
def getGenerators(n: int) -> Generator[int, None, None]:
    F = GF(n)

    for g in range(1, n):
        for k in range(1, n - 1):
            if F(g) ^ k == 1:
                break
            elif k == n - 2:
                yield g


p = 37
print("Tous les générateurs modulo", p)
print("Nombre de générateurs = ", euler_phi(p-1))
print(list(getGenerators(p)))