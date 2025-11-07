COMMENT-main=	BitTorrent command line and daemon client
COMMENT-gtk=	BitTorrent client with GTK+ interface
COMMENT-qt=	BitTorrent client with Qt interface

# for integration testing beyond 4.1.0-beta.3

VER=		4.1.0beta3
#PL=		pl20251107
GIT_REVISION=	4.1.0-beta.3
DISTNAME=	transmission-${VER}
#PKGNAME=	transmission-${VER}${PL}
PKGNAME=	transmission-${VER}
CATEGORIES=	net
HOMEPAGE=	https://transmissionbt.com/
MAINTAINER=	Josh Grosse <josh@jggimi.net>

DEBUG_PACKAGES=${BUILD_PACKAGES}

DPB_PROPERTIES= parallel

# GPLv2+
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github transmission transmission ${GIT_REVISION} .
DIST_TUPLE+=	github google crc32c\
		2bbb3be42e20a0e6c0f7b39dc07dc863d9ffbc07 third-party/crc32c
DIST_TUPLE+=	github google benchmark 0da57b85cf23e48d0e515f58c65a25425dbde012 \
		third-party/crc32c/third_party/benchmark
DIST_TUPLE+=	github google glog \
		53d58e4531c7c90f71ddab503d915e027432447a third-party/crc32c/third_party/glog
DIST_TUPLE+=	github google googletest 52204f78f94d7512df1f0f3bea1d47437a2c3a58 \
		third-party/crc32c/third_party/googletest
DIST_TUPLE+=	github transmission dht \
		38c9f261d9b58b76b9eaf85f84ec1b35151a1eac third-party/dht
DIST_TUPLE+=	github transmission fast_float \
		d7417618f93d2c47e9bbde561510f9fc8bafe003 third-party/fast_float
DIST_TUPLE+=	github transmission fmt \
		40626af88bd7df9a5fb80be7b25ac85b122d6c21 third-party/fmt
DIST_TUPLE+=	github google googletest \
		52eb8108c5bdec04579160ae17225d66034bd723 third-party/googletest
DIST_TUPLE+=	github transmission libb64 \
		64ab5ed7693d7a063c43f9da64c7d8e4e9519ef4 third-party/libb64
DIST_TUPLE+=	github transmission libdeflate \
		275aa5141db6eda3587214e0f1d3a134768f557d third-party/libdeflate
DIST_TUPLE+=	github transmission libevent \
		5bbf2aafe441c8f1f76e141e2ebd48e7ddb2d525 third-party/libevent
DIST_TUPLE+=	github transmission libnatpmp \
		134fc89e2781e154e40042641f4d8bcbe42579f1 third-party/libnatpmp
DIST_TUPLE+=	github transmission libpsl \
		f88562a8d9bf79d9fb74f59b7bc5a22ee6664fda third-party/libpsl
DIST_TUPLE+=	github publicsuffix list \
		5db9b65997e3c9230ac4353b01994c2ae9667cb9 third-party/libpsl/list
DIST_TUPLE+=	github transmission libutp \
		490874c44a2ecf914404b0a20e043c9755fff47b third-party/libutp
DIST_TUPLE+=	github transmission miniupnp \
		b55145ec095652289a59c33603f3abafee898273 third-party/miniupnp
DIST_TUPLE+=	github transmission rapidjson \
		24b5e7a8b27f42fa16b96fc70aade9106cf7102f third-party/rapidjson
DIST_TUPLE+=	github google googletest ba96d0b1161f540656efdaed035b3c062b60e006 \
		third-party/rapidjson/thirdparty/gtest
DIST_TUPLE+=	github transmission rpavlik-cmake-modules \
		d66fc5dec3eaea3a4f9778ceeeb65cbec490b5b9 third-party/rpavlik-cmake-modules
DIST_TUPLE+=	github transmission small \
		46bb00342b052b76a7b95ef639fcc601e80e2988 third-party/small
DIST_TUPLE+=	github transmission utfcpp \
		6be08bbea14ffa0a5c594257fb6285a054395cd7 third-party/utfcpp
DIST_TUPLE+=	github nemtrif ftest \
		c4ad4af0946b73ce1a40cbc72205d15d196c7e06 third-party/utfcpp/extern/ftest
DIST_TUPLE+=	github transmission wide-integer \
		c725651dd2d97932822daf92337cf634eb56d9fa third-party/wide-integer

MULTI_PACKAGES=	-main -gtk -qt

# gnu++17
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RelWithDebInfo

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

post-patch:
	echo ${GIT_REVISION} > ${WRKSRC}/REVISION

.include <bsd.port.mk>
