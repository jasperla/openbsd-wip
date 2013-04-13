# $OpenBSD

COMMENT =		Graph library for OCaml
CATEGORIES =		devel

DISTNAME =		ocamlgraph-1.8.1
PKGNAME =		ocaml-${DISTNAME}

MASTER_SITES =		${HOMEPAGE:=download/}

HOMEPAGE =		http://ocamlgraph.lri.fr/

# LGPLv2.1 + exception
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

ALL_TARGET =		all doc
INSTALL_TARGET =	install-findlib


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-ocamlgraph
	${INSTALL_DATA} \
		${WRKSRC}/examples/* \
		${PREFIX}/share/examples/ocaml-ocamlgraph/

.include <bsd.port.mk>
