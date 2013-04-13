# $OpenBSD$

COMMENT =		software repository analysis in OCaml

# MASTER_SITES should be updated along with VERSION
VERSION =		3.1.3
DISTNAME =		dose3-${VERSION}
PKGNAME =		ocaml-dose3-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://dose.gforge.inria.fr/public_html/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://gforge.inria.fr/frs/download.php/31681/

MODULES =		lang/ocaml
OCAML_DEPS =		devel/ocaml-extlib \
			devel/ocaml-ocamlgraph \
			devel/ocaml-pcre \
			devel/cudf,-main
BUILD_DEPENDS =		sysutils/findlib \
			${OCAML_DEPS}
RUN_DEPENDS =		${OCAML_DEPS}

FAKE_FLAGS =		BINDIR=${WRKINST}/${PREFIX}/bin

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ocamlgraph

# the tarball lacks needed files
NO_TEST =		Yes

post-install:
	-chmod a-x ${PREFIX}/lib/ocaml/dose3/*.cmxs
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
