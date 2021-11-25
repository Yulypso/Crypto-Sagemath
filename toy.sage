#!/usr/bin/env sage

from sage.all import *

p = 101
Fp = FiniteField(p)
# Construction de la courbe

a = Fp(1)
b = Fp(1)

E = EllipticCurve(Fp, [a, b])
print("Ma courbe E est l'ensemble des points (x,y,z) tels que")
print("y^2 z = x^3 + ", a, "x^2*z+", b, "*z^3 mod", p)
print("Le nombre de points de la courbe vaut ",
      E.cardinality(), " = ", factor(E.cardinality()))
print("Liste des points = ", E.points())
plot(E)
