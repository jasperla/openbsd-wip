COMMENT =		stereoscopic 3D video player

DISTNAME =		bino-1.6.8

CATEGORIES =		x11

HOMEPAGE =		https://bino3d.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLEW GLU Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets X11 Xext
WANTLIB += Xi Xmu ass avcodec avdevice avformat avutil c iconv intl
WANTLIB += m openal swscale ${COMPILER_LIBCXX}

MASTER_SITES =		https://bino3d.org/releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/qt5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/openal \
			graphics/ffmpeg>=20111126 \
			graphics/glew \
			multimedia/libass
BUILD_DEPENDS = 	devel/gettext,-tools

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-equalizer \
			--without-liblircclient \
			--with-qt-version=5

CONFIGURE_ENV += 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -Wl,-z,muldefs"

.include <bsd.port.mk>
