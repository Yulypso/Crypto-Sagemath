#!/usr/bin/env sage

from sage.all import *

# Q-12. Dans le fichier PHI, on vous donne N et φ(N). Calculez l’exposant secret d correspondant à l’exposant public 65537. Retrouvez la valeur des nombres premiers p et q tels que N = pq.

N = 446091665192091577
phi = 446091663811806580 
e = 65537
print("N:", N)
print("phi:", phi)
print("e:", e)


# 1) sachant e*d = 1 mod[phi(N)]
d = ZZ(1/Mod(e, phi))

print("d:", d)
print("d * e [phi]:", Mod(d * e, phi))

# 2) trouver p et q
print("p * q:",factor(N))

# résultat attendu : 
# p =  516346631
# q =  863938367
# N = (p-1)*(q-1)