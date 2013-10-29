# $OpenBSD$

COMMENT =		regular expression library for OCaml

DISTNAME =		ocaml-re-1.2.1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ocaml/ocaml-re/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE:=archive/}

MODULES =		lang/ocaml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests

WRKDIST =		${WRKDIR}/ocaml-re-${DISTNAME}


post-install:
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README,TODO.txt} \
		${PREFIX}/share/doc/ocaml-re/


.include <bsd.port.mk>
