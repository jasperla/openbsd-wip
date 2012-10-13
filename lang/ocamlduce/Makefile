# $OpenBSD: Makefile,v 1.9 2010/11/17 08:05:18 espie Exp $

COMMENT=	XML extension types for Objective Caml
CATEGORIES=	lang textproc

BROKEN=		"needs update to match OCaml 4.00"

V=		3.12.1.0
DISTNAME=	ocamlduce-${V}
MASTER_SITES=	https://forge.ocamlcore.org/frs/download.php/644/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.cduce.org/ocaml.html

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
WANTLIB=	curses m c pthread

RUN_DEPENDS =	lang/ocaml
BUILD_DEPENDS+=	sysutils/findlib

NO_REGRESS= 	Yes
USE_GMAKE=	Yes

ALL_TARGET =		world
INSTALL_TARGET = 	installbyte
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		world.opt
INSTALL_TARGET += 	installopt
.endif


.include <bsd.port.mk>
