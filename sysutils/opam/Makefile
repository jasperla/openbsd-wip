# $OpenBSD$

MULTI_PACKAGES =	-main -lib

COMMENT-main =		OCaml source-based package manager
COMMENT-lib =		OPAM library

CATEGORIES =		sysutils devel

V =		1.2.0beta4
GH_ACCOUNT =	ocaml
GH_PROJECT =	opam
GH_TAGNAME =	1.2.0-beta4
GH_COMMIT =	7360d6abca20ef5e09d3e22709e15e7202d620b7
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

PKGNAME-main =		opam-${V}
PKGNAME-lib =		opam-lib-${V}

HOMEPAGE =		http://opam.ocamlpro.com/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		c m

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/git \
			sysutils/findlib \
			devel/cudf,-ocaml \
			devel/ocaml-cmdliner \
			devel/ocaml-dose \
			devel/ocaml-graph \
			devel/ocaml-re

# we don't use ocp-build (yet)
#MAKE_ENV =		OCP_HOME="${WRKDIR}"

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

ALL_TARGET =		all html man
INSTALL_TARGET =	install libinstall
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam


post-install:
	${INSTALL_DATA_DIR} ${docdir}/{tutorials,api}
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md} \
		${WRKSRC}/doc/design/* \
		${docdir}/
	${INSTALL_DATA} ${WRKSRC}/doc/tutorials/*.html ${docdir}/tutorials
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${docdir}/api
	${INSTALL_DATA} ${WRKSRC}/doc/dev-manual/dev-manual.pdf ${docdir}/

.include <bsd.port.mk>
