# $OpenBSD: Makefile,v 1.20 2012/04/23 17:15:17 espie Exp $

COMMENT=	Objective Caml bindings for SQLite3
CATEGORIES=	databases

V=		2.0.2
NAME =		ocaml-sqlite3
DISTNAME=	sqlite3-ocaml-${V}
PKGNAME=	${NAME}-${V}
EXTRACT_SUFX=	.tar.gz
MASTER_SITES=	https://bitbucket.org/mmottl/sqlite3-ocaml/downloads/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	https://bitbucket.org/mmottl/sqlite3-ocaml/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml

WANTLIB =	sqlite3

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests


.include <bsd.port.mk>
