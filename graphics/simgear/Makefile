# $OpenBSD$

COMMENT =		simulations library

DISTNAME =		simgear-2.6.0

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake
BUILD_DEPENDS =		graphics/openscenegraph \
			devel/plib \
			devel/boost \
			audio/freealut

#CONFIGURE_ENV =		CFLAGS="-pthread" LDFLAGS="-pthread"

CFLAGS +=		-I${X11BASE}/include

NO_REGRESS =		Yes

.include <bsd.port.mk>
