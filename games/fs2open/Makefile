# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Open source project based on the original FreeSpace 2 source

DISTNAME =	fs2_open_3_8_0-source-Unix
PKGNAME =	fs2open-3.8.0

GH_ACCOUNT =	scp-fs2open
GH_PROJECT =	fs2open.github.com
GH_TAGNAME =	release_3_8_0

# Upstream pulls in cmake modules from the asarium's fork
RPAVLIK_MODS =	ad436ee7be33ca291a59866a173b777b0e2d81ce
COTIRE =	cotire-1.7.10

# asarium/cmake-modules is a mirror of rpavlik/cmake-modules
MASTER_SITES0 =	https://github.com/rpavlik/cmake-modules/archive/
MASTER_SITES1 =	https://github.com/sakra/cotire/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${RPAVLIK_MODS}.tar.gz:0 \
		${COTIRE}.tar.gz:1

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# Volition license which is not free software
PERMIT_PACKAGE_CDROM =	selling explicitly prohibited
PERMIT_PACKAGE_FTP =	no license at all
PERMIT_DISTFILES_FTP =	no license at all

WANTLIB += ${COMPILER_LIBCXX} c m z
WANTLIB += SDL2 lua5.1 openal
WANTLIB += avcodec avformat avutil jpeg swresample swscale
WANTLIB += jansson png

MODULES =		devel/cmake \
			lang/lua
BUILD_DEPENDS =		devel/doxygen
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			devel/jansson

# ${HOME} may HARDCODE path to home directory of installing user
CONFIGURE_ARGS =        -DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/fs2open.github.com-release_3_8_0

post-extract:
	rmdir	${WRKSRC}/cmake/external/rpavlik-cmake-modules \
		${WRKSRC}/cmake/external/cotire
	ln -s	${WRKDIR}/cmake-modules-${RPAVLIK_MODS} \
		${WRKSRC}/cmake/external/rpavlik-cmake-modules
	ln -s	${WRKDIR}/cotire-${COTIRE} ${WRKSRC}/cmake/external/cotire

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
