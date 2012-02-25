# $OpenBSD$

COMMENT =		flight simulator

DISTNAME =		flightgear-${V}

WANTLIB += GL GLU ICE OpenThreads SM X11 Xext alut apr-1 c m openal
WANTLIB += osg osgDB osgFX osgGA osgParticle osgSim osgText osgUtil
WANTLIB += osgViewer pthread stdc++ svn_client-1 svn_ra-1 svn_subr-1
WANTLIB += z

MASTER_SITES =	ftp://ftp.de.flightgear.org/pub/fgfs/Source/ \
		http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Source/

MODULES =	devel/cmake
BUILD_DEPENDS =	graphics/simgear>=${V} \
		devel/plib
LIB_DEPENDS =	graphics/openscenegraph \
		graphics/freeglut \
		audio/freealut \
		devel/subversion,-main
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DFG_DATA_DIR="${TRUEPREFIX}/share/flightgear"

NO_REGRESS =	Yes

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

.include <bsd.port.mk>
