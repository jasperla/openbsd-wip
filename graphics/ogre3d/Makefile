# $OpenBSD$

COMMENT =		open-source graphics rendering engine

DISTNAME =		ogre_src_v1-7-1
PKGNAME =		${DISTNAME:S/-/./g:S/_src_v/-/}

SHARED_LIBS += 		OgreMain		0.0
SHARED_LIBS += 		OgrePaging		0.0
SHARED_LIBS += 		OgreProperty		0.0
SHARED_LIBS += 		OgreRTShaderSystem	0.0
SHARED_LIBS += 		OgreTerrain		0.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.ogre3d.org/

#MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogre/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU ICE SM X11 Xaw Xext Xrandr Xt boost_date_time-mt
WANTLIB += boost_thread-mt c freeimage freetype m pthread stdc++ z zzip

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/doxygen
LIB_DEPENDS =		archivers/zziplib \
			devel/boost \
			devel/ois \
			graphics/freeimage

SEPARATE_BUILD =	concurrent
USE_X11 =		Yes
USE_LIBTOOL =		Yes
#CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release -DOGRE_BUILD_SAMPLES=TRUE
#			-DOGRE_BUILD_TESTS=TRUE
NO_REGRESS =		Yes

.include <bsd.port.mk>
