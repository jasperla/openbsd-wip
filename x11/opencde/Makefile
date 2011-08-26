# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		free CDE implementation

DISTNAME =		opencde-620

CATEGORIES =		x11

HOMEPAGE =		http://devio.us/~kpedersen

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD2 XXX
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xm Xpm Xt c m stdc++

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		x11/openmotif

MAKE_FLAGS =		PLATFORM=OPENBSD
MAKE_ENV =		CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/opencde

post-extract:
	find ${WRKSRC} -name '*.orig' -exec rm -f {} \;

pre-build:
	${SUBST_CMD} ${WRKSRC}/src/libopencde/Environment.cpp

do-install:
.for _b in dtlock dtlogin dtpad dtpanel dtsplash
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${_b} ${PREFIX}/bin
.endfor
	chmod u+s ${PREFIX}/bin/dtlock

.for _s in dtsession dtterm dtwm
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${_s} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/opencde
	cd ${WRKSRC}/share/opencde  && pax -rw . ${PREFIX}/share/opencde
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opencde
	${INSTALL_DATA} ${WRKSRC}/etc/opencde/dtpanel/menus.ini \
		${PREFIX}/share/examples/opencde/menus.ini.sample
	${INSTALL_DATA} ${WRKSRC}/lib/libmotifmm.so ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libopencde.so ${PREFIX}/lib

.include <bsd.port.mk>
