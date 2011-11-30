# $OpenBSD$

COMMENT-main =		barcode generator
COMMENT-x11 = 		barcode generator GUI

V = 			2.4.3
DISTNAME =		zint-${V}
PKGNAME-main = 		${DISTNAME}
PKGNAME-x11 = 		zint-x11-${V}

SHARED_ONLY = 		Yes

SHARED_LIBS += 		QZint	0.0 # 2.4
SHARED_LIBS += 		zint	0.0 # 2.4

CATEGORIES =		graphics

HOMEPAGE =		http://sourceforge.net/projects/zint/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c m png z
WANTLIB-main = 		${WANTLIB}
WANTLIB-x11 = 		${WANTLIB} QtCore QtGui QtXml pthread stdc++ zint

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=zint/}

MODULES =		devel/cmake

LIB_DEPENDS = 		graphics/png

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RELEASE

MULTI_PACKAGES = 	-main

PSEUDO_FLAVORS = 	no_x11
FLAVOR ?=

REGRESS_DEPENDS = 	graphics/zint,-main

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES +=       -x11
LIB_DEPENDS-x11 += 	graphics/zint,-main \
			x11/qt4
RUN_DEPENDS-x11 += 	devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/zint-qt.desktop ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/zint.png ${PREFIX}/share/pixmaps/
.endif

do-regress:
	cd ${WRKSRC}/frontend/ && LD_LIBRARY_PATH=${WRKSRC}/backend/ ./test.sh

.include <bsd.port.mk>
