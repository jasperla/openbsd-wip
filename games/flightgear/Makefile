# $OpenBSD$

COMMENT-main =		flight simulator
COMMENT-data =		data files for flightgear

MULTI_PACKAGES =	-main -data

V =			2.4.0
DISTNAME =		flightgear-${V}

PKGNAME-main =		flightgear-${V}
PKGNAME-data =		flightgear-data-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.flightgear.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main  = GL GLU ICE OpenThreads SM X11 Xext Xi Xmu Xt alut c
WANTLIB-main += glut m openal osg osgDB osgFX osgGA osgParticle osgSim
WANTLIB-main += osgText osgUtil osgViewer pthread stdc++ usbhid z

DISTFILES =		flightgear-${V}.tar.bz2:0 \
			FlightGear-data-${V}.tar.bz2:1
MASTER_SITES0 =		ftp://ftp.goflyflightgear.com/flightgear/Source/ \
			ftp://ftp.de.flightgear.org/pub/fgfs/Source/ \
			http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Source/
MASTER_SITES1 =		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/ \
			http://ftp.linux.kiev.ua/pub/fgfs/Shared/

BUILD_DEPENDS-main =	graphics/simgear \
			devel/plib
LIB_DEPENDS-main =	graphics/openscenegraph \
			graphics/freeglut \
			audio/freealut
RUN_DEPENDS-main =	${BASE_PKGPATH},-data

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CFLAGS="-pthread" LDFLAGS="-pthread"

NO_REGRESS =		Yes

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flightgear
	cd ${WRKDIR}/data && pax -rw . ${PREFIX}/share/flightgear

.include <bsd.port.mk>
