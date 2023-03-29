ONLY_FOR_ARCHS =	amd64

COMMENT =	lobby client for the Spring RTS project
V =		0.274
DISTNAME =	springlobby-${V}
CATEGORIES =	games x11
HOMEPAGE =	https://springlobby.springrts.com
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext boost_system-mt
WANTLIB += c crypto curl gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl jsoncpp m minizip notify png ssl wx_baseu-3.2
WANTLIB += wx_baseu_net-3.2 wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_qa-3.2 wx_gtk3u_richtext-3.2 z

MASTER_SITES =		https://springlobby.springrts.com/dl/stable/
EXTRACT_SUFX =		.tar.bz2

# C++17
COMPILER =		base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	 devel/gettext,-tools
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	archivers/minizip \
		devel/boost \
		devel/jsoncpp \
		devel/libgit2/libgit2 \
		net/curl \
		x11/wxWidgets

# need alure for sound
CONFIGURE_ARGS =	-DOPTION_SOUND=OFF \
			-DPRD_JSONCPP_INTERNAL=OFF

FIX_EXTRACT_PERMISSIONS =	Yes

# use dependencies from ports
post-extract:
	rm -rf ${WRKSRC}/src/downloader/lib/src/lib/{cimg,jsoncpp,minizip}

.include <bsd.port.mk>
