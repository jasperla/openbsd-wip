# $OpenBSD$

SHARED_ONLY =		Yes
COMMENT =		template and text document library for Qt
PKG_VERSION =		0.3.0
PLIST_VERSION =		${PKG_VERSION:R}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11
HOMEPAGE =		http://www.gitorious.org/grantlee/
REVISION =		2

SHARED_LIBS =		grantlee_core		1.0	# 0.1
SHARED_LIBS +=		grantlee_gui		1.0	# 0.1

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

WANTLIB =  c m stdc++ pthread
WANTLIB += lib/qt4/QtGui lib/qt4/QtScript

MODULES =		devel/cmake x11/qt4
BUILD_DEPENDS =		devel/doxygen \
			math/graphviz

REGRESS_DEPENDS =	${BUILD_PKGPATH}
REGRESS_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LCov:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc:Bool=Yes \

SUBST_VARS =		PLIST_VERSION
DOCS_PATH =		${PREFIX}/share/grantlee/${PLIST_VERSION}

post-build:
	cd ${WRKBUILD} && make docs

post-install:
	rm -Rf ${DOCS_PATH}
	${INSTALL_DATA_DIR} ${DOCS_PATH}
	cp -R ${WRKBUILD}/apidox ${DOCS_PATH}

.include <bsd.port.mk>
