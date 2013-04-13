# $OpenBSD$

COMMENT =		build a CLI with Ocaml

DISTNAME =		cmdliner-0.9.3
PKGNAME =		ocaml-${DISTNAME}

MASTER_SITES =		${HOMEPAGE:=releases/}

CATEGORIES =		devel

HOMEPAGE =		http://erratique.ch/software/cmdliner/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.tbz

MODULES =		lang/ocaml

CONFIGURE_STYLE =	oasis

ALL_TARGET =		-build


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-cmdliner/api
	${INSTALL_DATA} \
		${WRKSRC}/CHANGES \
		${PREFIX}/share/doc/ocaml-cmdliner/
	${INSTALL_DATA} \
		${WRKSRC}/doc/* \
		${PREFIX}/share/doc/ocaml-cmdliner/api/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-cmdliner
	${INSTALL_DATA} \
		${WRKSRC}/test/* \
		${PREFIX}/share/examples/ocaml-cmdliner/

.include <bsd.port.mk>
