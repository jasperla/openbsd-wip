# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	measure/compare run-time of OCaml functions
CATEGORIES =	devel

GH_ACCOUNT =	Chris00
GH_PROJECT =	ocaml-benchmark
GH_TAGNAME =	1.4
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

HOMEPAGE =	https://github.com/Chris00/ocaml-benchmark
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

CONFIGURE_STYLE =	oasis

BUILD_DEPENDS =		sysutils/findlib \
			sysutils/oasis \
			devel/ocaml-pcre


pre-configure:
	cd ${WRKSRC} && oasis setup

post-install:
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/ocaml-benchmark/


.include <bsd.port.mk>
