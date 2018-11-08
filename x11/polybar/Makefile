# $OpenBSD$

COMMENT =	fast and easy-to-use status bar
DISTNAME =	polybar-3.2.1
CATEGORIES =	x11

HOMEPAGE =	https://polybar.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo curl fontconfig freetype
WANTLIB += jsoncpp m mpdclient pulse xcb xcb-cursor xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-randr xcb-util xcb-xkb xcb-xrm z
WANTLIB += lib/inotify/inotify

# Have to checkout with git clone --recursive
# So I'll just host a tarball myself
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	${RUN_DEPENDS}

LIB_DEPENDS =	audio/libmpdclient \
		audio/pulseaudio \
		devel/jsoncpp \
		devel/libinotify \
		graphics/cairo \
		net/curl

RUN_DEPENDS =	x11/py-xcbgen \
		fonts/siji \
		fonts/unifont

CONFIGURE_ARGS =	-DENABLE_CCACHE=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -lintl -L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify"

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polybar
	${INSTALL_DATA} ${WRKSRC}/doc/config ${PREFIX}/share/examples/polybar

.include <bsd.port.mk>
