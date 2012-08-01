# $OpenBSD: ocaml.port.mk,v 1.17 2012/06/25 11:43:35 espie Exp $

# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.foo-native    -- nativecode files for FLAVOR == foo
# PFRAG.no-foo-native -- nativecode files for FLAVOR != foo

OCAML_VERSION=4.00.0

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
MODOCAML_NATIVE=Yes

# include nativecode base files
PKG_ARGS+=-Dnative=1

.if ${PROPERTIES:Mocaml_native_dl}
MODOCAML_NATDYNLINK=Yes

# include native dynlink base files
PKG_ARGS+=-Ddynlink=1

.else

MODOCAML_NATDYNLINK=No

# remove native dynlink base file entry from PLIST
PKG_ARGS+=-Ddynlink=0
.endif

.else

MODOCAML_NATIVE=No
RUN_DEPENDS+=	lang/ocaml=${OCAML_VERSION}

# remove native base file entry from PLIST
PKG_ARGS+=-Dnative=0
.endif

BUILD_DEPENDS+=	lang/ocaml=${OCAML_VERSION}
MAKE_ENV+= OCAMLFIND_DESTDIR=${DESTDIR}${TRUEPREFIX}/lib/ocaml

