# $OpenBSD$

COMMENT =	compatible client of Ace of Spades 0.75
DISTNAME =      v${V}
PKGNAME =	openspades-${V}

EXTRACT_SUFX =  .zip

CATEGORIES =	games

HOMEPAGE =      http://openspades.yvt.jp

PERMIT_PACKAGE_CDROM = Yes

WANTLIB =		???


MASTER_SITES =           https://github.com/yvt/openspades/archive/

MODULES =		devel/cmake gcc4
MODGCC4_LANGS =         c c++
MODGCC4_ARCHS =         *
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		net/curl \
			devel/sdl2 \
			devel/sdl2-image \
			audio/opus \
			audio/opusfile \
			audio/freealut
CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=Release \
			-DOPENSPADES_INSTALL_BINARY=bin
CFLAGS =		-g -O2

.include <bsd.port.mk>
