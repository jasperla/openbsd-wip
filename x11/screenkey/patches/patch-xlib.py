$OpenBSD$

diff --git Screenkey/xlib.py Screenkey/xlib.py
index a592741..b383ed6 100644
--- Screenkey/xlib.py
+++ Screenkey/xlib.py
@@ -6,7 +6,7 @@ from __future__ import unicode_literals
 from ctypes import *
 
 ## base X11
-libX11 = CDLL('libX11.so.6')
+libX11 = CDLL('libX11.so')
 
 # types
 Atom = c_ulong
@@ -278,7 +278,7 @@ XkbKeycodeToKeysym.restype = KeySym
 
 
 ## record extensions
-libXtst = CDLL('libXtst.so.6')
+libXtst = CDLL('libXtst.so')
 
 # types
 XPointer = String

