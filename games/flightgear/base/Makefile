# $OpenBSD$

COMMENT =		flight simulator

V =			2.4.0
DISTNAME =		flightgear-${V}

WANTLIB  = GL GLU ICE OpenThreads SM X11 Xext Xi Xmu Xt alut c
WANTLIB += glut m openal osg osgDB osgFX osgGA osgParticle osgSim
WANTLIB += osgText osgUtil osgViewer pthread stdc++ usbhid z

MASTER_SITES =	ftp://ftp.de.flightgear.org/pub/fgfs/Source/ \
		http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Source/

BUILD_DEPENDS =	graphics/simgear \
		devel/plib
LIB_DEPENDS =	graphics/openscenegraph \
		graphics/freeglut \
		audio/freealut
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CFLAGS="-pthread" LDFLAGS="-pthread"

NO_REGRESS =		Yes

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

.include <bsd.port.mk>
