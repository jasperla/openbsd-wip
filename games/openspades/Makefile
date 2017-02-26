# $OpenBSD$

COMMENT =	        compatible client of Ace of Spades 0.75
DISTNAME =	        openspades-${V}
V =                     0.1.1b
DATA_V =                r33

EXTRACT_SUFX =          .zip

CATEGORIES =	        games

HOMEPAGE =              http://openspades.yvt.jp

PERMIT_PACKAGE_CDROM =  No
PERMIT_PACKAGE_FTP =    No
PERMIT_DISTFILES_FTP =  No

MASTER_SITES =          https://github.com/yvt/openspades/archive/ \
                        https://github.com/yvt/openspades-paks/releases/download/${DATA_V}/

DISTFILES =             v${V}${EXTRACT_SUFX}
DISTFILES +=            OpenSpadesDevPackage-${DATA_V}${EXTRACT_SUFX}

WANTLIB +=              GL GLU ICE SM X11 Xext Xrandr
WANTLIB +=              c freetype m pthread z estdc++

MODULES =		devel/cmake lang/clang
MODCLANG_LANGS =        c c++
MODCLANG_ARCHS =        *

BUILD_DEPENDS =		audio/opus \
			audio/opusfile \
			audio/freealut \
			devel/sdl2 \
			devel/sdl2-image \
			graphics/ImageMagick
RUN_DEPENDS =		devel/desktop-file-utils
CONFIGURE_ARGS =	-DOPENSPADES_INSTALL_BINARY=bin

CFLAGS =                -O2
CXXFLAGS =              -O2

NO_TEST =		Yes

post-extract:
			unzip -u -o ${FULLDISTDIR}/OpenSpadesDevPackage-${DATA_V}${EXTRACT_SUFX} -d ${WRKSRC}/Resources
			mv ${WRKSRC}/Resources/Nonfree/pak000-Nonfree.pak ${WRKSRC}/Resources
			mv ${WRKSRC}/Resources/OfficialMods/font-unifont.pak ${WRKSRC}/Resources
			mv ${WRKSRC}/Resources/Nonfree/LICENSE.md ${WRKSRC}/Resources/LICENSE.pak000.md
			mv ${WRKSRC}/Resources/OfficialMods/LICENSE ${WRKSRC}/Resources/LICENSE.unifont.txt

pre-install:
			cp ${WRKSRC}/Resources/*pak000* ${WRKBUILD}/Resources
			cp ${WRKSRC}/Resources/*unifont* ${WRKBUILD}/Resources

.include <bsd.port.mk>
