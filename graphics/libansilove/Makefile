# $OpenBSD: Makefile,v 1.9 2017/12/20 14:39:45 fcambus Exp $

COMMENT =	ansi and ascii art to png converter library

GH_ACCOUNT =	ansilove
GH_PROJECT =	libansilove
GH_COMMIT =	dd315b468a69ce2729b2ceb4e4ab8e396867c1bd

DISTNAME =	libansilove-20180707

SHARED_LIBS +=	ansilove	0.0 # 0.0

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
