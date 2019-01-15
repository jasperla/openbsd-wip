# $OpenBSD: Makefile,v 1.9 2017/12/20 14:39:45 fcambus Exp $

COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.1.0
DISTNAME =	libansilove-$V

SHARED_LIBS +=	ansilove	0.0 # 1.1

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/ansilove/libansilove/releases/download/$V/

WANTLIB =	m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
