# $OpenBSD$

COMMENT =		stereoscopic 3D video player

DISTNAME =		bino-1.4.0

CATEGORIES =		x11

HOMEPAGE =		http://bino3d.org/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLEWmx QtGui QtOpenGL X11 Xext Xfixes ass avcodec
WANTLIB += avdevice avformat avutil bz2 c gsm m mp3lame
WANTLIB += ogg openal orc-0.4 pthread schroedinger-1.0 sndio speex
WANTLIB += stdc++ swscale theoradec theoraenc vorbis vorbisenc
WANTLIB += vpx x264 xvidcore z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=bino/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/openal \
			graphics/ffmpeg>=20111126 \
			graphics/glew \
			multimedia/libass

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-equalizer \
			--without-liblircclient

CONFIGURE_ENV += 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

NO_REGRESS =		Yes

.include <bsd.port.mk>
