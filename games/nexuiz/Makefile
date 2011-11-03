# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		first-person shooter

V =			2.5.2
DISTNAME =		nexuiz-${V:S/.//g}
PKGNAME =		nexuiz-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.nexuiz.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB  = SDL X11 Xext Xpm Xxf86dga Xxf86vm c curl jpeg m modplug
WANTLIB += ogg png pthread theora util vorbis vorbisenc vorbisfile
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nexuiz/}
EXTRACT_SUFX =		.zip

LIB_DEPENDS =		audio/libmodplug \
			net/curl \
			audio/libvorbis \
			multimedia/libtheora \
			graphics/png \
			graphics/jpeg \
			devel/sdl

MAKE_FLAGS =		CC="${CC}" CPUOPTIMIZATIONS="${CFLAGS}" \
			DP_FS_BASEDIR="${PREFIX}/share/nexuiz" \
			DP_PRELOAD_DEPENDENCIES=1 DP_LINK_TO_LIBJPEG=1 \
			CFLAGS_LIBJPEG="-I${LOCALBASE}/include"

NO_REGRESS =		Yes

MAKE_FILE =		BSDmakefile
WRKDIST =		${WRKDIR}/Nexuiz
WRKSRC =		${WRKDIST}/sources/darkplaces

ALL_TARGET =		nexuiz

post-extract:
	cd ${WRKDIR}/Nexuiz/sources && unzip enginesource20091001.zip

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nexuiz-glx ${PREFIX}/bin/nexuiz-glx
	${INSTALL_PROGRAM} ${WRKSRC}/nexuiz-dedicated \
		${PREFIX}/bin/nexuiz-dedicated
	${INSTALL_PROGRAM} ${WRKSRC}/nexuiz-sdl ${PREFIX}/bin/nexuiz-sdl
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz/havoc
	${INSTALL_DATA} ${WRKDIST}/data/*.pk3 ${PREFIX}/share/nexuiz/data
	${INSTALL_DATA} ${WRKDIST}/havoc/*.pk3 ${PREFIX}/share/nexuiz/havoc

.include <bsd.port.mk>
