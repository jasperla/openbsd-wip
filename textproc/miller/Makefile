# $OpenBSD: Makefile,v 1.13 2018/06/27 21:38:01 fcambus Exp $

COMMENT =	name-indexed data processing tool

V =		5.3.0
DISTNAME =	mlr-$V
PKGNAME =	miller-$V

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MASTER_SITES =	https://github.com/johnkerl/miller/releases/download/v$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
