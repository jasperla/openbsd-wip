# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		3D rendering engine

V =			1.7.4
DISTNAME =		ogre_src_v${V:S/./-/g}
PKGNAME =		ogre-${V}

SHARED_LIBS +=  OgreMain                  0.0 # 1.7
SHARED_LIBS +=  OgrePaging                0.0 # 1.7
SHARED_LIBS +=  OgreProperty              0.0 # 1.7
SHARED_LIBS +=  OgreRTShaderSystem        0.0 # 1.7
SHARED_LIBS +=  OgreTerrain               0.0 # 1.7

CATEGORIES =		x11

HOMEPAGE =		http://www.ogre3d.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU ICE SM X11 Xaw Xext Xrandr Xt boost_date_time-mt
WANTLIB += boost_thread-mt c freeimage freetype m pthread stdc++
WANTLIB += z zzip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogre/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/freeimage \
			devel/boost \
			devel/ois \
			net/poco \
			archivers/zziplib

NO_REGRESS =		Yes

.include <bsd.port.mk>
