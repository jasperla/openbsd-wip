Index: arch-defines.mk
===================================================================
RCS file: /cvs/ports/infrastructure/mk/arch-defines.mk,v
retrieving revision 1.6
diff -u -p -r1.6 arch-defines.mk
--- arch-defines.mk     8 Jul 2012 18:35:48 -0000       1.6
+++ arch-defines.mk     26 Jul 2012 10:58:21 -0000
@@ -28,8 +28,12 @@ GCC2_ARCHS = aviion luna88k m68k m88k mv
 # XXX easier for ports that depend on mono
 MONO_ARCHS = amd64 i386
 LLVM_ARCHS = amd64 i386 powerpc sparc64
+OCAML_NATIVE_ARCHS = alpha i386 sparc amd64 powerpc
+OCAML_NATIVE_DL_ARCHS = i386 amd64
 
-.for PROP in ALL APM BE LE LP64 NO_SHARED GCC4 GCC3 GCC2 MONO LLVM
+
+.for PROP in ALL APM BE LE LP64 NO_SHARED GCC4 GCC3 GCC2 MONO LLVM \
+                               OCAML_NATIVE OCAML_NATIVE_DL
 .  for A B in ${MACHINE_ARCH} ${ARCH}
 .    if !empty(${PROP}_ARCHS:M$A) || !empty(${PROP}_ARCHS:M$B)
 PROPERTIES += ${PROP:L}
