# $OpenBSD$

ONLY_FOR_ARCHS= i386 amd64

COMMENT-main=	fast-paced first person shooter
COMMENT-data=	fast-paced first person shooter, data files
COMMENT-server=	fast-paced first person shooter, server

MULTI_PACKAGES=	-main -data -server

N=		xonotic
V=		0.8.0
DISTNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
PKGNAME-server=	${N}-server-${V}
EXTRACT_SUFX=	.zip

CATEGORIES=	games x11
MASTER_SITES=	http://dl.xonotic.org/
HOMEPAGE=	http://www.xonotic.org

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

PKG_ARCH-data=	*

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curl jpeg m png z

WANTLIB-main=	${WANTLIB} SDL X11
WANTLIB-main+=	ogg png pthread theora vorbis vorbisenc vorbisfile

WANTLIB-data=	# empty

LIB_DEPENDS-main=	net/curl \
			audio/libvorbis \
			multimedia/libtheora \
			graphics/png \
			graphics/jpeg \
			devel/sdl
LIB_DEPENDS-server=	net/curl \
			graphics/jpeg \
			graphics/png

RUN_DEPENDS-main=	${BASE_PKGPATH},-data
RUN_DEPENDS-server=	${BASE_PKGPATH},-data

MAKE_FLAGS=		CC="${CC}" CPUOPTIMIZATIONS="${CFLAGS}" \
			DP_FS_BASEDIR="${PREFIX}/share/xonotic" \
			DP_PRELOAD_DEPENDENCIES=1 DP_LINK_TO_LIBJPEG=1 \
			CFLAGS_LIBJPEG="-I${LOCALBASE}/include -DLINK_TO_LIBJPEG"

NO_TEST=	Yes

MAKE_FILE=	BSDmakefile
WRKDIST=	${WRKDIR}/Xonotic
WRKSRC=		${WRKDIST}/source/darkplaces

ALL_TARGET=	sdl-release sv-release

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/darkplaces-dedicated \
	    ${PREFIX}/bin/xonotic-dedicated
	${INSTALL_PROGRAM} ${WRKSRC}/darkplaces-sdl \
	    ${PREFIX}/bin/xonotic-sdl
	${INSTALL_DATA_DIR} ${PREFIX}/share/xonotic
	${INSTALL_DATA_DIR} ${PREFIX}/share/xonotic/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/xonotic/server
	${INSTALL_DATA_DIR} ${PREFIX}/share/xonotic/server/rcon2irc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xonotic/
	${INSTALL_DATA} ${WRKDIST}/data/*.pk3 ${PREFIX}/share/xonotic/data
	${INSTALL_DATA} ${WRKDIST}/server/{server,help}.cfg \
	    ${PREFIX}/share/examples/xonotic/
	${INSTALL_DATA} ${WRKDIST}/server/rcon.pl \
	    ${PREFIX}/share/xonotic/server
	${INSTALL_DATA} ${WRKDIST}/server/rcon2irc/* \
	    ${PREFIX}/share/xonotic/server/rcon2irc
	
.include <bsd.port.mk>
