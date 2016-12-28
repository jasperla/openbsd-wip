# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:59 zhuk Exp $

COMMENT =	KDE helper for multithreaded programming
DISTNAME =	threadweaver-${VERSION}

SHARED_LIBS =	KF5ThreadWeaver		1.0

WANTLIB =	Qt5Core m

# please CMake
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0048=OLD \
			-DCMAKE_POLICY_DEFAULT_CMP0063=OLD

.include <bsd.port.mk>
