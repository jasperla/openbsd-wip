# $OpenBSD$

COMMENT=	lightweight headless squeezebox emulator

V=		1.8
DISTNAME=	squeezelite-v$V
PKGNAME=	squeezelite-$V
DISTFILES=	${DISTNAME}{v$V}.tar.gz

CATEGORIES=	audio

HOMEPAGE=	https://code.google.com/p/squeezelite/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC avcodec avformat avutil c faad m mad mpg123 portaudio
WANTLIB += pthread soxr vorbis vorbisfile

MASTER_SITES=	https://squeezelite.googlecode.com/archive/

LIB_DEPENDS=	audio/faad \
		audio/flac \
		audio/libmad \
		audio/libsoxr \
		audio/libvorbis \
		audio/mpg123 \
		audio/portaudio-svn \
		graphics/ffmpeg

MAKE_FLAGS=	CFLAGS="-Wall -fPIC -DFFMPEG -DRESAMPLE -DLINKALL ${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lportaudio -lpthread -lFLAC -lvorbis -lvorbisfile -lmpg123 -lsoxr -lmad -lavcodec -lavformat -lfaad"

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squeezelite ${PREFIX}/bin/

.include <bsd.port.mk>
