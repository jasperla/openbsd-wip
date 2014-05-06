# $OpenBSD$

ONLY_FOR_ARCHS = i386 amd64 arm

COMMENT =	portable sdl version of spear of destiny
V =		1.7
DISTNAME =	Wolf4SDL-${V}-src
PKGNAME =	wolf4sdl-sod-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	games

HOMEPAGE =	http://www.chaos-software.de.vu/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# limited use id software license and MAME license
PERMIT_PACKAGE_CDROM =		No
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	SDL c m pthread stdc++ SDL_mixer>=3

LIB_DEPENDS =	devel/sdl-mixer

MASTER_SITES = http://www.alice-dsl.net/mkroll/bins/

USE_X11 = 	Yes
USE_GMAKE =	Yes

post-extract:
	@perl -MExtUtils::Command -e dos2unix ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wolf4sdl-sod/
.for i in Changes.txt README.txt license-id.txt license-mame.txt
	${INSTALL_DATA} ${WRKBUILD}/$i ${PREFIX}/share/doc/wolf4sdl-sod/
.endfor

.include <bsd.port.mk>
