# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	Biniou binary data format for OCaml
CATEGORIES =	devel

V =		1.0.9
DISTNAME =	biniou-${V}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://mjambon.com/releases/biniou/

HOMEPAGE =	http://mjambon.com/biniou.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib \
			devel/ocaml-easy-format

USE_GMAKE =		Yes

TEST_TARGET =		test

ALL_TARGET =		all
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-biniou/api
	${INSTALL_DATA} \
		${WRKSRC}/{Changes,README.md,biniou-format.txt} \
		${PREFIX}/share/doc/ocaml-biniou/
	${INSTALL_DATA} \
		${WRKSRC}/doc/* \
		${PREFIX}/share/doc/ocaml-biniou/api/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-biniou
	${INSTALL_DATA} \
		${WRKSRC}/test_biniou.ml \
		${PREFIX}/share/examples/ocaml-biniou/


.include <bsd.port.mk>
