# $OpenBSD$

V =		2.11
COMMENT =	3D fractal renderer
DISTNAME =	mandelbulber2-${V}-1
PKGNAME =	mandelbulber2-${V}.1
CATEGORIES =	graphics

HOMEPAGE =	http://mandelbulber.com
MAINTAINER =	Brian Callahan <bcallah@devio.us>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5Test
WANTLIB += Qt5Widgets c gomp gsl gslcblas lzo2 m png pthread sndfile
WANTLIB += tiff

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mandelbulber/}

MODULES =	devel/qmake x11/qt5

LIB_DEPENDS =	audio/libsndfile \
		devel/gsl \
		devel/openmp \
		x11/qt5/qtmultimedia

RUN_DEPENDS =	devel/desktop-file-utils

WRKSRC =	${WRKDIST}/makefiles

pre-configure:
	sed -i 's,/usr/share,${TRUEPREFIX}/share,g' \
		${WRKDIST}/mandelbulber2.desktop \
		${WRKDIST}/src/system.hpp

# Upstream's install is broken...
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/build-${MACHINE_ARCH}/mandelbulber2 \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/mandelbulber2.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/mandelbulber2
	cd ${WRKDIST}/usr/share/mandelbulber2 && find * -type d -exec \
		${INSTALL_DATA_DIR} "${PREFIX}/share/mandelbulber2/{}" \;
	cd ${WRKDIST}/usr/share/mandelbulber2 && find * -type f -exec \
		${INSTALL_DATA} "{}" "${PREFIX}/share/mandelbulber2/{}" \;

.include <bsd.port.mk>
