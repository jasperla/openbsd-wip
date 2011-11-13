# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT-main =		first-person shooter
COMMENT-data =		first-person shooter, data files
COMMENT-server =	first-person shooter, server

MULTI_PACKAGES =	-main -data -server

V =			2.5.2
DISTNAME =		nexuiz-${V:S/.//g}
PKGNAME-main =		nexuiz-${V}
PKGNAME-data =		nexuiz-data-${V}
PKGNAME-server =	nexuiz-server-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.nexuiz.com/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c curl m jpeg z

WANTLIB-main  = ${WANTLIB} SDL modplug
WANTLIB-main += ogg png pthread theora vorbis vorbisenc vorbisfile

WANTLIB-data =	#empty

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nexuiz/}
EXTRACT_SUFX =		.zip

LIB_DEPENDS-main =	audio/libmodplug \
			net/curl \
			audio/libvorbis \
			multimedia/libtheora \
			graphics/png \
			graphics/jpeg \
			devel/sdl
LIB_DEPENDS-server =	net/curl \
			graphics/jpeg
RUN_DEPENDS-main =	${BASE_PKGPATH},-data

MAKE_FLAGS =		CC="${CC}" CPUOPTIMIZATIONS="${CFLAGS}" \
			DP_FS_BASEDIR="${PREFIX}/share/nexuiz" \
			DP_PRELOAD_DEPENDENCIES=1 DP_LINK_TO_LIBJPEG=1 \
			CFLAGS_LIBJPEG="-I${LOCALBASE}/include"

NO_REGRESS =		Yes

MAKE_FILE =		BSDmakefile
WRKDIST =		${WRKDIR}/Nexuiz
WRKSRC =		${WRKDIST}/sources/darkplaces

ALL_TARGET =		sdl-nexuiz sv-nexuiz

post-extract:
	cd ${WRKDIR}/Nexuiz/sources && unzip enginesource20091001.zip

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nexuiz-dedicated ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/nexuiz-sdl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/nexuiz/havoc
	${INSTALL_DATA} ${WRKDIST}/data/*.pk3 ${PREFIX}/share/nexuiz/data
	${INSTALL_DATA} ${WRKDIST}/havoc/*.pk3 ${PREFIX}/share/nexuiz/havoc

.include <bsd.port.mk>
