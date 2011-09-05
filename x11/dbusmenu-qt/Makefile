# $OpenBSD$

COMMENT =		D-Bus menu implementation for Qt
DISTNAME =		dbusmenu-qt-0.9.0
CATEGORIES =		x11 devel
HOMEPAGE =		http://people.canonical.com/~agateau/dbusmenu/

SHARED_LIBS +=	dbusmenu-qt               0.0 # 2.6

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.ohvost.ru/dnl/

MODULES =		devel/cmake devel/gettext x11/qt4
WANTLIB +=		QtDBus QtGui m stdc++
BUILD_DEPENDS =		devel/qjson
REGRESS_DEPENDS =	devel/qjson

SEPARATE_BUILD =		simple
REGRESS_TARGET =		check
REGRESS_IS_INTERACTIVE =	X11

CXXFLAGS +=	-pthread

.include <bsd.port.mk>
