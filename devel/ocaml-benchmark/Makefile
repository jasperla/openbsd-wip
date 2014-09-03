# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	measure/compare run-time of OCaml functions
CATEGORIES =	devel

GH_ACCOUNT =	Chris00
GH_PROJECT =	ocaml-benchmark
GH_TAGNAME =	1.3
GH_COMMIT =	b39acd20d8f3f72284c734068863a5bd470534bf
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >=3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/oasis \
			sysutils/findlib \
			devel/ocaml-pcre

CONFIGURE_STYLE =	oasis


pre-configure:
	cd ${WRKSRC} && oasis setup

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/ChangeLog \
		${PREFIX}/share/doc/ocaml-benchmark/


.include <bsd.port.mk>
