# $OpenBSD$

COMMENT =		stereoscopic 3D video player

DISTNAME =		bino-1.6.6

CATEGORIES =		x11

HOMEPAGE =		http://bino3d.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU QtGui QtOpenGL X11 ass
WANTLIB += avcodec avdevice avformat avutil c iconv intl m openal
WANTLIB += swscale

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=bino/}
EXTRACT_SUFX =		.tar.xz

MODULES =		x11/qt4
COMPILER = 		base-clang ports-gcc
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/openal \
			graphics/ffmpeg>=20111126 \
			graphics/glew \
			multimedia/libass
BUILD_DEPENDS = 	devel/gettext-tools

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-equalizer \
			--without-liblircclient \
			--with-qt-version=4

CONFIGURE_ENV += 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -Wl,-z,muldefs"

.include <bsd.port.mk>
