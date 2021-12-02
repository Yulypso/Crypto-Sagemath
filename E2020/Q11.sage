#!/usr/bin/env sage

from sage.all import *

# Q-11. Dans le fichier AES, on vous donne le chiffrement c d’une clef AES k de 128 bits avec un exposant public 3 et un module RSA N. Retrouvez la clef AES k.


# 128 bits < 2048 bits t'es d'accord 😢 
# et un nombre en 128 bits ^ 3 sera toujours < un nombre en 2048 bits
# Donc comme l'exposant est petit e = 3, on peut facilement casse AES juste en faisant un ^1/e 
# Par contre si tu avais e = 65537 => on aurait un nombre en 128^65537 bits >>>> un nombre en 2048 bits 
# et là tu peux pas faire ^1/e parce que le modulo doit s'appliquer