# $OpenBSD: $

COMMENT =		small and fast Qt image viewer

V = 			2.4.4
DISTNAME =		nomacs-${V}-source
PKGNAME =		nomacs-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://www.nomacs.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtGui QtNetwork X11 c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw quazip stdc++ webp tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nomacs/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4 \
			gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		archivers/quazip \
			graphics/libwebp \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff

CONFIGURE_ARGS =	-DUSE_SYSTEM_WEBP:Bool=ON \
			-DUSE_SYSTEM_QUAZIP:Bool=ON

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
