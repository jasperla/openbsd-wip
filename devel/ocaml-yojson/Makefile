# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	OCaml JSON parsing and printing library
CATEGORIES =	devel

V =		1.1.8
DISTNAME =	yojson-${V}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://mjambon.com/releases/yojson/

HOMEPAGE =	http://mjambon.com/yojson.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib \
			devel/ocaml-cppo \
			devel/ocaml-biniou

#CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

TEST_DEPENDS =		devel/ocaml-yojson
TEST_TARGET =		bench

ALL_TARGET =		all
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-yojson
	${INSTALL_DATA} \
		${WRKSRC}/{Changes,README.md} \
		${PREFIX}/share/doc/ocaml-yojson
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-yojson
	${INSTALL_DATA} \
		${WRKSRC}/examples/* \
		${PREFIX}/share/examples/ocaml-yojson


.include <bsd.port.mk>
