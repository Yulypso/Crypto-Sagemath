#!/usr/bin/env sage

from sage.all import *

N = 1598984280286474748260150483625187536648721152480309394574742865252579723957653058843213426573802785961198958209725647860702171337919543287982844012352754828675859575185366416665667374770631760441107506827406725140895486029200978945746279

# sachant N = p*q
# et q - p = 2022
# q = 2022 + p
# donc :
# N = p * (2022 + p)
# N = 2022*p + p^2
# p^2 + 2022*p - N = 0

# Calcul du discriminant D pour chercher p
# D = 2022 ^2 -4 * 1 * (-N) =
D = 2022 ^ 2 - (4 * 1 * (-N))
print("D =", D)

# les racines sont donc :
r1 = (-2022 - sqrt(D))/2
r2 = (-2022 + sqrt(D))/2

print("r1 =", r1)
print("r2 =", r2)

# prenons p = r2 donc
p = r2
q = 2022 + p

print("p =", p)
print("q =", q)

print("p * q == N ?", p*q == N)
