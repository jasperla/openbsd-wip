# $OpenBSD$

COMMENT-main =		CUDF library (Ocaml resources)
COMMENT-bindings =	CUDF library (C bindings)

# MASTER_SITES should be updated along with VERSION
VERSION =		0.6.3
DISTNAME =		cudf-${VERSION}
PKGNAME-main =		ocaml-cudf-${VERSION}
PKGNAME-bindings =	libcudf-${VERSION}

CATEGORIES =		devel sysutils

HOMEPAGE =		http://www.mancoosi.org/cudf/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://gforge.inria.fr/frs/download.php/31910/

PSEUDO_FLAVORS =	no_bindings
ONLY_FOR_ARCHS-bindings = ${OCAML_NATIVE_ARCHS}
FLAVOR ?=

MULTI_PACKAGES =	-main -bindings

WANTLIB =		c m

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/ocaml-extlib
RUN_DEPENDS =		devel/ocaml-extlib
TEST_DEPENDS =		devel/ounit
LIB_DEPENDS-bindings =	devel/glib2

FAKE_FLAGS =		PREFIX=${PREFIX} BINDIR=${PREFIX}/bin \
			INCDIR=${PREFIX}/include LIBDIR=${PREFIX}/lib

USE_GMAKE =		Yes

ALL_TARGET =		all doc
TEST_TARGET =		test

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
.endif

.if ${BUILD_PACKAGES:M-bindings}
ALL_TARGET +=		c-lib-opt
TEST_TARGET +=		c-lib-test
.endif

docdir =		${PREFIX}/share/doc/cudf/

post-install:
	-rm -f ${PREFIX}/lib/ocaml/cudf/*.o
	${INSTALL_DATA_DIR} ${docdir}/api/
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${docdir}
	${INSTALL_DATA} ${WRKSRC}/cudf.docdir/* ${docdir}/api/
	
.include <bsd.port.mk>
