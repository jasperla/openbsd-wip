# $OpenBSD: Makefile,v 1.58 2018/06/22 08:30:46 landry Exp $

COMMENT =	library used to query system info and statistics

VERSION =	0.4.1

NAME=		libsysstat
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  sysstat-qt5               0.0 # 0.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

LIB_DEPENDS +=		x11/qt5/qtbase,-main

BUILD_DEPENDS +=	x11/qt5/qttools \
			x11/lxqt/build-tools


CONFIGURE_ENV +=	Qt5Core_DIR=${LOCALBASE}/lib/qt5/cmake


.include <bsd.port.mk>
