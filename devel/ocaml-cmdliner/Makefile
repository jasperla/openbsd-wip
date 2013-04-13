# $OpenBSD$

COMMENT =		build a CLI with Ocaml

DISTNAME =		cmdliner-0.9.3
PKGNAME =		ocaml-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://erratique.ch/software/cmdliner/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE:=releases/}

EXTRACT_SUFX =		.tbz

MODULES =		lang/ocaml

CONFIGURE_STYLE =	oasis

# tests are not active in 0.9.3
NO_TEST =		Yes

ALL_TARGET =		-build

post-install:
	chmod a-x ${PREFIX}/lib/ocaml/cmdliner/*.cmxs

.include <bsd.port.mk>
