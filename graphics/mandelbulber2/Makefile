# $OpenBSD$

COMMENT =	free 3D fractal rendering software
DISTNAME =	mandelbulber2-2.03
CATEGORIES =	graphics x11

HOMEPAGE =	http://www.mandelbulber.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Widgets c gsl gslcblas m png pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mandelbulber/}

MODULES =	gcc4 \
		x11/qt5
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

LIB_DEPENDS =	devel/gsl

RUN_DEPENDS =	devel/desktop-file-utils

MAKE_FLAGS =	CXX="${CXX}"

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/makefiles

pre-configure:
	${SUBST_CMD} ${WRKDIST}/mandelbulber2.desktop \
		${WRKDIST}/src/system.hpp \
		${WRKDIST}/usr/share/mandelbulber2/data/mandelbulber_1.21_defaults.fract
	rm ${WRKDIST}/usr/share/mandelbulber2/data/mandelbulber_1.21_defaults.fract.*

do-configure:
	cd ${WRKSRC} && qmake-qt5
	perl -pi -e "s,-O3,${CXXFLAGS},g" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mandelbulber2 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/mandelbulber2.desktop \
		${PREFIX}/share/applications
	cd ${WRKDIST}/usr/share/mandelbulber2 && \
		find * -type d -exec ${INSTALL_DATA_DIR} \
			"${PREFIX}/share/mandelbulber2/{}" \;
	cd ${WRKDIST}/usr/share/mandelbulber2 && \
		find * -type f -exec ${INSTALL_DATA} \
			"{}" "${PREFIX}/share/mandelbulber2/{}" \;

.include <bsd.port.mk>
