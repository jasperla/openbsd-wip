# $OpenBSD$

COMMENT =		template and text document library for Qt
PKG_VERSION =		0.3.0
PLIST_VERSION =		${PKG_VERSION:R}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11 x11/qt4
HOMEPAGE =		http://www.gitorious.org/grantlee/
REVISION =		0

SHARED_LIBS +=		grantlee_core		1.0	# 0.1
SHARED_LIBS +=		grantlee_gui		1.0	# 0.1

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

WANTLIB += c m stdc++ pthread
WANTLIB += lib/qt4/QtGui lib/qt4/QtScript

MODULES =		devel/cmake x11/qt4
BUILD_DEPENDS =		devel/doxygen
REGRESS_DEPENDS =	devel/cmake \
			${BUILD_PKGPATH}

SEPARATE_BUILD =	simple

# Even LDFLAGS doesn't work
COPTS = 		-lc -lpthread

SUBST_VARS =		PLIST_VERSION

# NOTE: Some regression tests could fail when started by "make regress".
# Re-run them manually from the command line to check.

.include <bsd.port.mk>
