COMMENT =	Lightweight Tox client

V =		0.16.1
GH_ACCOUNT =	uTox
GH_PROJECT =	uTox
GH_TAGNAME =	v${V}

CATEGORIES =	net

HOMEPAGE =	https://utox.io

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xrender c fontconfig freetype m pthread
WANTLIB += openal opus sodium toxav toxcore toxencryptsave v4lconvert vpx

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	audio/openal \
		multimedia/libv4l \
		net/toxcore \

.include <bsd.port.mk>
