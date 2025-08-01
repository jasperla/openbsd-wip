COMMENT-main=	BitTorrent command line and daemon client
COMMENT-gtk=	BitTorrent client with GTK+ interface
COMMENT-qt=	BitTorrent client with Qt interface

# testing between 4.0.6 and the next release

VER=		4.1.0.dev
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gtk=	transmission-gtk-${VER}
PKGNAME-qt=	transmission-qt-${VER}
CATEGORIES=	net
HOMEPAGE=	https://transmissionbt.com/
MAINTAINER=	Josh Grosse <josh@jggimi.net>

DEBUG_PACKAGES=${BUILD_PACKAGES}

DPB_PROPERTIES= parallel

# GPLv2+
PERMIT_PACKAGE=	Yes

# not in use until the next release
SITES=	https://github.com/transmission/transmission/releases/download/${VER}/
EXTRACT_SUFX=	.tar.xz

MULTI_PACKAGES=	-main -gtk -qt

# gnu++17
COMPILER =	base-clang ports-gcc

.if DEBUG
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo
INSTALL_DEBUG_PACKAGES=	Yes
.endif

PSEUDO_FLAVORS=	no_gtk no_qt
FLAVOR?=

.include <bsd.port.arch.mk>

WANTLIB-common =	${COMPILER_LIBCXX} c crypto curl deflate intl
WANTLIB-common +=	m miniupnpc natpmp psl ssl

WANTLIB-main =	${WANTLIB-common}

WANTLIB-gtk +=	${WANTLIB-common} atk-1.0 atkmm-1.6 cairo cairo-gobject
WANTLIB-gtk +=	cairomm-1.0 gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB-gtk +=	giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB-gtk +=	harfbuzz intl pango-1.0 pangocairo-1.0 pangomm-1.4 sigc-2.0

WANTLIB-qt +=	${WANTLIB-common} GL Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Svg
WANTLIB-qt +=	Qt6Widgets

MODULES +=		devel/cmake \
			textproc/intltool

# see discussion with tearfur upstream
#BUILD_DEPENDS +=	devel/fmt

LIB_DEPENDS-common +=	archivers/libdeflate \
			net/curl \
			net/libpsl \
			net/miniupnp/libnatpmp \
			net/miniupnp/miniupnpc>=1.9

LIB_DEPENDS-main =	${LIB_DEPENDS-common}

LIB_DEPENDS-gtk +=	${LIB_DEPENDS-common} \
			x11/gtk3mm \
			x11/gtk+3

LIB_DEPENDS-qt +=	${LIB_DEPENDS-common} \
			${MODQT_LIB_DEPENDS} \
			x11/qt6/qtsvg

RUN_DEPENDS-gtk +=	${PKGNAME-main}:${BUILD_PKGPATH} \
			devel/desktop-file-utils \
			x11/gtk+4,-guic

RUN_DEPENDS-qt +=	${PKGNAME-main}:${BUILD_PKGPATH} \
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DENABLE_CLI=ON
CONFIGURE_ARGS +=	-DRUN_CLANG_TIDY=OFF

# XXX sees ports libevent2 but picks base libevent expecting a single .so.*
# use the bundle until upstream cmake code gets fixed
CONFIGURE_ARGS +=	-DUSE_SYSTEM_EVENT2=OFF

.if ${BUILD_PACKAGES:M-gtk}
CONFIGURE_ARGS +=	-DENABLE_GTK=ON \
			-DUSE_GTK_VERSION=3
.else
CONFIGURE_ARGS +=	-DENABLE_GTK=OFF
.endif

.if ${BUILD_PACKAGES:M-qt}
MODULES +=		x11/qt6
# XXX =6 finds "Qt6", =5 fails to find "Qt", but Qt6 is preferred, anyway
CONFIGURE_ARGS +=	-DENABLE_QT=ON \
			-DUSE_QT_VERSION=6
.else
CONFIGURE_ARGS +=	-DENABLE_QT=OFF
.endif

.include <bsd.port.mk>
