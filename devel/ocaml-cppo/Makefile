# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	OCaml preprocessor
CATEGORIES =	devel

V =		1.1.2
DISTNAME =	cppo-${V}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://mjambon.com/releases/cppo/

HOMEPAGE =	http://mjambon.com/cppo.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes

ALL_TARGET =		ocamlbuild all


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-cppo
	${INSTALL_DATA} \
		${WRKSRC}/{Changes,README.md} \
		${PREFIX}/share/doc/ocaml-cppo


.include <bsd.port.mk>
