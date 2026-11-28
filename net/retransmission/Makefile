asset:  transmission-4.2.0-dev+rbd848f203f-nightly.20261127.tar.xz

COMMENT-main=	fork of net/transmission
COMMENT-gtk=	fork of net/transmission with GTK interfaces
COMMENT-qt=	fork of net/transmission with Qt interface

DATE=		20261127
DISTNAME=	transmission-4.2.0-dev+rbd848f203f-nightly.${DATE}
FOLDER=		transmission-4.2.0-dev+rbd848f203f

SITES=		https://github.com/retransmission/retransmission/releases/download/nightly/
SITES+=		https://jggimi.net/distfiles/

WRKSRC=		${WRKOBJDIR}/${DISTNAME}/${FOLDER}
WRKDIST=	${WRKSRC}

VER=		4.2.0pre${DATE}

PSEUDO_FLAVORS=	no_gtk no_qt
FLAVOR?=

.if !empty(FLAVOR)
.  if ${FLAVOR:Mno_gtk}
WRKSRC=		${WRKOBJDIR}/${DISTNAME}-no_gtk/${FOLDER}
.  endif
.  if ${FLAVOR:Mno_qt}
WRKSRC=		${WRKOBJDIR}/${DISTNAME}-no_qt/${FOLDER}
.  endif
.  if ${FLAVOR} == "no_gtk no_qt"
WRKSRC=		${WRKOBJDIR}/${DISTNAME}-no_gtk-no_qt/${FOLDER}
.  endif
.  if ${FLAVOR} == "no_qt no_gtk"
WRKSRC=		${WRKOBJDIR}/${DISTNAME}-no_gtk-no_qt/${FOLDER}
.  endif
.endif

PKGNAME-main=	retransmission-${VER}
PKGNAME-gtk=	retransmission-gtk-${VER}
PKGNAME-qt=	retransmission-qt-${VER}

CATEGORIES=	net

HOMEPAGE=	https://retransmission.org/

MAINTAINER=	Josh Grosse <josh@jggimi.net>

DEBUG_PACKAGES=${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=	.tar.xz

MULTI_PACKAGES=	-main -gtk -qt

# gnu++17
COMPILER =	base-clang ports-gcc

.include <bsd.port.arch.mk>

WANTLIB-common += ${COMPILER_LIBCXX} archive c crypto curl intl m miniupnpc
WANTLIB-common += natpmp psl simdutf ssl z

WANTLIB-main =	${WANTLIB-common}

WANTLIB-gtk +=	${WANTLIB-common} atk-1.0 atkmm-1.6 cairo cairo-gobject
WANTLIB-gtk +=	cairomm-1.0 gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB-gtk +=	giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB-gtk +=	harfbuzz pango-1.0 pangocairo-1.0 pangomm-1.4 sigc-2.0

WANTLIB-qt +=	${WANTLIB-common} GL Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Svg
WANTLIB-qt +=	Qt6Widgets 

MODULES +=		devel/cmake \
			textproc/intltool

BUILD_DEPENDS +=	devel/fmt

LIB_DEPENDS-common +=	archivers/libarchive \
			net/curl \
			net/libpsl \
			net/miniupnp/libnatpmp \
			net/miniupnp/miniupnpc>=1.9 \
			textproc/simdutf

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

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

CONFIGURE_ARGS +=	-DENABLE_CLI=ON \
			-DENABLE_TESTS=OFF \
			-DRUN_CLANG_TIDY=OFF

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
