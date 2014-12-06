# $OpenBSD$

COMMENT =		stereoscopic 3D video player

DISTNAME =		bino-1.6.1

CATEGORIES =		x11

HOMEPAGE =		http://bino3d.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEWmx GLU QtGui QtOpenGL X11 ass avcodec avdevice avformat
WANTLIB += avutil c m openal pthread stdc++ swscale

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=bino/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		audio/openal \
			graphics/ffmpeg>=20111126 \
			graphics/glew \
			multimedia/libass

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-equalizer \
			--without-liblircclient

CONFIGURE_ENV += 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -Wl,-z,muldefs"

NO_TEST =		Yes

.include <bsd.port.mk>
