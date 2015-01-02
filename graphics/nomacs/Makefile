# $OpenBSD: $

COMMENT =		Small and fast Qt image viewer

V = 			2.2.0
DISTNAME =		nomacs-${V}-source
PKGNAME =		nomacs-${V}

CATEGORIES =		graphics

HOMEPAGE =		http://www.nomacs.org

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtGui QtNetwork X11 c exiv2 lcms2 m opencv_core opencv_imgproc
WANTLIB += pthread raw stdc++ tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nomacs/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4

LIB_DEPENDS =		graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff \

WRKDIST =		${WRKDIR}/${PKGNAME}

NO_TEST =		Yes

.include <bsd.port.mk>
