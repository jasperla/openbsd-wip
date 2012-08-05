# $OpenBSD$

COMMENT =		D-Bus menu implementation for Qt
V =			0.9.2
DISTNAME =		libdbusmenu-qt-${V}
PKGNAME =		dbusmenu-qt-${V}
REVISION =		1
CATEGORIES =		x11 devel
HOMEPAGE =		https://launchpad.net/libdbusmenu-qt/

SHARED_LIBS =		dbusmenu-qt	0.0 # 2.6
EXTRACT_SUFX =		.tar.bz2

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}trunk/${V}/+download/

MODULES =		devel/cmake x11/qt4
WANTLIB =		QtDBus QtGui m stdc++
BUILD_DEPENDS =		devel/qjson
REGRESS_DEPENDS =	devel/qjson

SEPARATE_BUILD =		simple
REGRESS_TARGET =		check
REGRESS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
