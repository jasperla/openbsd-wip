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

WANTLIB =		c m

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/ocaml-extlib
RUN_DEPENDS-main =	devel/ocaml-extlib
TEST_DEPENDS =		devel/ounit
LIB_DEPENDS-bindings =	devel/glib2
# XXX no way to get rid of RUN_DEPENDS = ocaml
RUN_DEPENDS-bindings =

FAKE_FLAGS =		PREFIX=${PREFIX} BINDIR=${PREFIX}/bin \
			INCDIR=${PREFIX}/include LIBDIR=${PREFIX}/lib

USE_GMAKE =		Yes

ALL_TARGET =		all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//} doc
TEST_TARGET =		test

MULTI_PACKAGES =	-main

PSEUDO_FLAVORS =	no_bindings
FLAVOR ?=

.if ! ${FLAVOR:Mno_bindings}
MULTI_PACKAGES +=	-bindings
ALL_TARGET +=		c-lib${MODOCAML_NATIVE:S/Yes/-opt/:S/No//}
TEST_TARGET +=		c-lib-test
.endif

docdir =		${PREFIX}/share/doc/${FULLPKGNAME}

post-install:
	-rm -f ${PREFIX}/lib/ocaml/cudf/*.o
	${INSTALL_DATA_DIR} ${docdir} ${docdir}/api/
	${INSTALL_DATA} ${WRKSRC}/COPYING ${WRKSRC}/README ${docdir}
	${INSTALL_DATA} ${WRKSRC}/cudf.docdir/* ${docdir}/api/
	
.include <bsd.port.mk>
