# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

SHARED_ONLY =		Yes

COMMENT =		fast-paced, futuristic FPS with RTS elements

DISTNAME =		unvanquished-0.22.0

CATEGORIES =		games

HOMEPAGE =		http://www.unvanquished.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GeoIP SDL2 X11 c curl freetype gmp hogweed
WANTLIB += iconv jpeg m ncursesw nettle ogg openal opusfile png
WANTLIB += pthread speex speexdsp theora vorbis vorbisfile webp z

MASTER_SITES =		http://unvanquished.net/downloads/sources/stripped/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS =		audio/libogg \
			audio/openal \
			audio/opus \
			audio/opusfile \
			audio/speex \
			audio/libvorbis \
			devel/sdl2 \
			graphics/glew \
			graphics/jpeg \
			graphics/png \
			graphics/libwebp \
			multimedia/libtheora \
			multimedia/xvidcore \
			net/GeoIP \
			net/curl \
			security/libnettle

CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-lopusfile
CONFIGURE_ARGS +=	-DOPUS_INCLUDE_DIR=${LOCALBASE}/include \
			-DOPUSFILE_LIBRARY=${LOCALBASE}/lib

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/unvanquished
	${INSTALL_PROGRAM} ${WRKBUILD}/daemon ${WRKBUILD}/daemon-tty \
		${WRKBUILD}/daemonded ${WRKBUILD}/*.so \
		${PREFIX}/share/unvanquished
	${INSTALL_SCRIPT} ${WRKSRC}/download-pk3.sh \
		${PREFIX}/share/unvanquished
	${INSTALL_DATA_DIR} ${PREFIX}/share/unvanquished/main
	${INSTALL_PROGRAM} ${WRKBUILD}/main/*.so \
		${PREFIX}/share/unvanquished/main
	${INSTALL_DATA_DIR} ${PREFIX}/share/unvanquished/main/vm
	${INSTALL_DATA} ${WRKBUILD}/main/vm/*.qvm \
		${PREFIX}/share/unvanquished/main/vm

.include <bsd.port.mk>
