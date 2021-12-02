#!/usr/bin/env sage

from sage.all import *

p = 1427247692705959881058285969449495136382746771
q = p-1

print("p =", p)
print("q =", q)

g = Mod(2, p)
print("g =", g)

y = Mod(1410930752338563599746253434984904693462587143, p)
# x = Mod(ZZ.random_element(q), q)


# print("Alice : ma clef secrete est x =", x, " et ma clef publique est y =", y)

# k = Mod(ZZ.random_element(q), q)

# while gcd(k, q) != 1:
#    print(k, " pas premier avec ", q)
#    k = Mod(ZZ.random_element(q), q)

Hm1 = Mod(1253407306852938305073187761980836201542970456, q)
r1 = Mod(930645128664793277386502675057030643470867191, p)
s1 = Mod(376633742194673404646501533980564727321034563, q)

print("The signature is r1 =", r1, " et s1 =", s1)

if(Integer(r1) > 0 and Integer(r1) < Integer(p) and Integer(s1) > 0 and Integer(s1) < Integer(p-1) and g ^ Hm1 == (y ^ r1) * r1 ^ s1):
    print("Signature is valid")
else:
    print("Signature is invalid")


Hm2 = Mod(1148399278173058692370621105525155483431291373, q)
r2 = Mod(930645128664793277386502675057030643470867191, p)
s2 = Mod(376633742194673404646501533980564727321034563, q)

print("The signature is r2 =", r2, " et s2 =", s2)

if(Integer(r2) > 0 and Integer(r2) < Integer(p) and Integer(s2) > 0 and Integer(s2) < Integer(p-1) and g ^ Hm2 == (y ^ r2) * r2 ^ s2):
    print("Signature is valid")
else:
    print("Signature is invalid")

# searching
k = s / (Hm1 - x)
