# $OpenBSD: Makefile,v 1.58 2018/06/22 08:30:46 landry Exp $

COMMENT =	various packaging tools and scripts for LXQt applications

VERSION =	0.5.0

NAME=		lxqt-build-tools
DISTNAME =	${NAME}-${VERSION}

LIB_DEPENDS +=		x11/qt5/qtbase,-main

BUILD_DEPENDS +=	x11/qt5/qttools

CONFIGURE_ARGS +=	-DLXQT_ETC_XDG_DIR=${SYSCONFDIR}/xdg
CONFIGURE_ENV +=	Qt5_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5Core_DIR=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
