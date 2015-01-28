$OpenBSD$
Always specify --sysroot to build process.
This is need for the current bootstrap system to work.
--- mk/main.mk
+++ mk/main.mk
@@ -399,7 +399,7 @@ CFG_VALGRIND_COMPILE$(1) = $$(CFG_VALGRIND_COMPILE)
 endif
 
 # Add RUSTFLAGS_STAGEN values to the build command
-EXTRAFLAGS_STAGE$(1) = $$(RUSTFLAGS_STAGE$(1))
+EXTRAFLAGS_STAGE$(1) = --sysroot $$(HROOT$(1)_H_$(3)) $$(RUSTFLAGS_STAGE$(1))
 
 CFGFLAG$(1)_T_$(2)_H_$(3) = stage$(1)
 
