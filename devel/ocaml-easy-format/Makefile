# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	Functional interface to the OCaml stdlib Format module 
CATEGORIES =	devel

V =		1.0.2
DISTNAME =	easy-format-${V}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://mjambon.com/releases/easy-format/

HOMEPAGE =	http://mjambon.com/easy-format.html
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# BSD 3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes

TEST_TARGET =		test

ALL_TARGET =		all
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
.endif


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-easy-format
	${INSTALL_DATA} \
		${WRKSRC}/{Changes,README.md} \
		${PREFIX}/share/doc/ocaml-easy-format
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocaml-easy-format
	${INSTALL_DATA} \
		${WRKSRC}/{simple_example,test_easy_format,lambda_example}.ml \
		${PREFIX}/share/examples/ocaml-easy-format


.include <bsd.port.mk>
