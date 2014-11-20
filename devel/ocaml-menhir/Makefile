# $OpenBSD: Makefile,v 1.4 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	OCaml parser generator for the LR(1) grammar
CATEGORIES =	devel

V =		20140422
DISTNAME =	menhir-${V}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://cristal.inria.fr/~fpottier/menhir/

HOMEPAGE =	http://cristal.inria.fr/~fpottier/menhir/
MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL2, Q1.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

WANTLIB =		c m
BUILD_DEPENDS =		sysutils/findlib

USE_GMAKE =		Yes

ALL_TARGET =		all
.include <bsd.port.arch.mk>
.if ! ${PROPERTIES:Mocaml_native}
MAKE_FLAGS +=		TARGET=byte
.endif

NO_TEST =		Yes


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-menhir
	${INSTALL_DATA} \
		${WRKSRC}/CHANGES \
		${PREFIX}/share/doc/ocaml-menhir
	mv ${PREFIX}/share/man/man1/menhir.1 ${PREFIX}/man/man1/menhir.1
	mv ${PREFIX}/share/doc/menhir ${PREFIX}/share/doc/ocaml-menhir


.include <bsd.port.mk>
