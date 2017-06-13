# $OpenBSD: Makefile,v 1.8 2017/04/10 11:46:36 sthen Exp $

COMMENT =		template and text document library for Qt5

PKG_VERSION =		5.1.0
PLIST_VERSION =		${PKG_VERSION:R}
PKGNAME =		grantlee-qt5-${PKG_VERSION}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11
HOMEPAGE =		https://github.com/steveire/grantlee

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
PORTROACH =		limit:^[0-4].*

SHARED_LIBS +=  Grantlee_Templates        0.0 # 5.1
SHARED_LIBS +=  Grantlee_TextDocument     0.0 # 5.1

WANTLIB += Qt5Core Qt5Gui c m pthread

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

MODULES =		devel/cmake \
			x11/qt5

TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc:Bool=Yes

SUBST_VARS =		PLIST_VERSION

.include <bsd.port.mk>
