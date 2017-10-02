# $OpenBSD: Makefile,v 1.3 2017/07/27 09:34:38 sthen Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	2.0 # 5.29

WANTLIB =		${COMPILER_LIBCXX} Qt5Core Qt5Gui dmtx m qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

.include <bsd.port.mk>
