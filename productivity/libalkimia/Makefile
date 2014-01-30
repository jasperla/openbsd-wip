# $OpenBSD$
COMMENT =		common classes for finance KDE 4 apps
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>
DISTNAME =		libalkimia-4.3.2

SHARED_LIBS =		alkimia		0.0 # 4.3

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus gmp m stdc++

MASTER_SITES =		http://kde-apps.org/CONTENT/content-files/137323-
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4
MODKDE4_USE =

BUILD_DEPENDS =		devel/doxygen \
			${MODKDE4_DEP_DIR}/libs
LIB_DEPENDS =		devel/gmp

do-test:
	cd ${WRKBUILD} && ./libalkimia/alkcompanytest

.include <bsd.port.mk>
