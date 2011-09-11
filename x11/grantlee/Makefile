# $OpenBSD$

COMMENT =		template and text document library for Qt
DISTNAME =		grantlee-0.1.9
CATEGORIES =		devel x11 x11/qt4
HOMEPAGE =		http://www.gitorious.org/grantlee/

SHARED_LIBS +=	grantlee_core		0.0	# 0.1
SHARED_LIBS +=	grantlee_gui		0.0	# 0.1

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtGui lib/qt4/QtScript

MODULES =		devel/cmake x11/qt4
BUILD_DEPENDS =		devel/doxygen
REGRESS_DEPENDS =	devel/cmake

SEPARATE_BUILD =	simple

COPTS = 		-lc -pthread

.include <bsd.port.mk>
