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

BUILD_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

INSTALL_TARGET =	install-findlib
ALL_TARGET =		doc byte
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=	opt
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-ocamlgraph
	${INSTALL_DATA} \
		${WRKSRC}/examples/* \
		${PREFIX}/share/examples/ocaml-ocamlgraph/

.include <bsd.port.mk>
