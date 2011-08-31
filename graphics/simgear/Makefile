# $OpenBSD$

COMMENT =		simulations library

DISTNAME =		simgear-2.4.0

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		graphics/openscenegraph \
			devel/plib \
			devel/boost \
			audio/freealut

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CFLAGS="-pthread" LDFLAGS="-pthread"

NO_REGRESS =		Yes

.include <bsd.port.mk>
