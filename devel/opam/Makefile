# $OpenBSD$

COMMENT-main =		OCaml source-based package manager
COMMENT-ocaml =		OPAM OCaml library

VERSION =		1.0.0
DISTNAME =		opam-full-${VERSION}
PKGNAME-main =		opam-${VERSION}
PKGNAME-ocaml =		ocaml-opam-${VERSION}

CATEGORIES =		sysutils devel

HOMEPAGE =		http://opam.ocamlpro.com/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		http://www.ocamlpro.com/pub/

MULTI_PACKAGES =	-main -ocaml

MODULES =		lang/ocaml
OCAML_DEPS =		devel/cudf,-main \
			devel/ocaml-cmdliner \
			devel/ocaml-dose3 \
			devel/ocaml-ocamlgraph \
			devel/ocaml-re
BUILD_DEPENDS =		sysutils/findlib \
			${OCAML_DEPS}
RUN_DEPENDS =		devel/git \
			devel/gmake \
			net/curl \
			net/rsync
RUN_DEPENDS-ocaml =	${OCAML_DEPS}
TEST_DEPENDS =		${RUN_DEPENDS} \
			lang/python/2.7

# we don't use ocp-build (yet)
#MAKE_ENV =		OCP_HOME="${WRKDIR}"

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		FETCH="curl"

ALL_TARGET =		with-ocamlbuild
INSTALL_TARGET =	install-with-ocamlbuild libinstall-with-ocamlbuild
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam

post-install:
	@rm -f ${PREFIX}/man/man1/*.orig
	${INSTALL_DATA_DIR} ${docdir}
	${INSTALL_DATA_DIR} ${docdir}/tutorials
	${INSTALL_DATA} ${WRKSRC}/doc/tutorials/* ${docdir}/tutorials
	${INSTALL_DATA_DIR} ${docdir}/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${docdir}/html
	${INSTALL_DATA_DIR} ${docdir}/dev-manual/
	${INSTALL_DATA} ${WRKSRC}/doc/dev-manual/dev-manual.pdf \
	    ${docdir}/dev-manual

.include <bsd.port.mk>
