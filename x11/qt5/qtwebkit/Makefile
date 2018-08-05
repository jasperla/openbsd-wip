# $OpenBSD: Makefile,v 1.11 2018/06/15 17:50:46 rsadowski Exp $

#QT5NAME =		QtWebkit
COMMENT =		old Webkit integration framework for Qt
USE_WXNEEDED =		Yes
DPB_PROPERTIES =	parallel

DISTNAME =	qtwebkit-5.212.0-alpha2
PKGNAME =	qtwebkit-${VERSION}

#GH_ACCOUNT =	annulen
#GH_PROJECT =	webkit
#GH_COMMIT =	4ce8ebc4094512b9916bfa5984065e95ac97c9d8

SHARED_LIBS +=		Qt5WebKit		2.1
SHARED_LIBS +=		Qt5WebKitWidgets	2.1

CATEGORIES =		www

# XXX
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sensors Qt5WebChannel
WANTLIB += Qt5Widgets X11 Xcomposite Xrender c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += icui18n icuuc jpeg m png sqlite3 webp xml2 xslt z

MASTER_SITES =		https://github.com/annulen/webkit/releases/download/${DISTNAME}/

MODULES =		perl \
			lang/ruby \
			devel/cmake \
			x11/qt5

USE_NINJA =		No

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			devel/libsoup \
			geo/geoclue \
			x11/dbus

RUN_DEPENDS =		geo/geoclue \
			x11/dbus

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS =		databases/sqlite3 \
			graphics/libwebp \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			textproc/icu4c \
			textproc/libxslt \
			graphics/libwebp \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtlocation>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsensors>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebchannel>=${QT5_VERSION},<${QT5_NEXT_VERSION}

CONFIGURE_ARGS +=	-DPORT=Qt \
			-DENABLE_TOOLS=OFF
#FLAVORS =		debug
#PSEUDO_FLAVORS =	no_tests

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS} \
			audio/sox

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS =		-L${X11BASE}/lib -L${LOCALBASE}/lib

CONFIGURE_ARGS +=	-DPORT=Qt \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el" && \
    ${MACHINE_ARCH} != "sh"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif

.include <bsd.port.arch.mk>

# ld.lld does not have this option
# save memory on 32bit arches
.if !${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

# __sync_add_and_fetch_8
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i686
CXXFLAGS +=		-march=i686
.endif

post-extract:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/cmake/WebKitCommon.cmake

.include <bsd.port.mk>
