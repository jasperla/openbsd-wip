# $OpenBSD: Makefile,v 1.10 2020/06/22 04:13:03 rsadowski Exp $

V =			0.16.1.1
COMMENT =		P2P payment system
PKGNAME =		dashpay-${V}

GH_ACCOUNT =		dashpay
GH_PROJECT =		dash
GH_TAGNAME =		v${V}

SHARED_LIBS +=  dashconsensus		0.0 # 0.0
SHARED_LIBS +=  secp256k1		0.0 # 0.0
SHARED_LIBS +=  univalue		0.0 # 100.3

CATEGORIES =		net

HOMEPAGE =		https://dash.org

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem
WANTLIB += boost_system boost_system-mt boost_thread-mt c crypto
WANTLIB += db_cxx event_core event_extra event_pthreads execinfo icuio
WANTLIB += m sodium ssl zmq zstd

LIB_DEPENDS =		archivers/zstd \
			databases/db/v4 \
			devel/boost \
			devel/libevent2 \
			net/zeromq \
			devel/libexecinfo

USE_GMAKE =		Yes

COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--with-incompatible-bdb \
			--prefix=${WRKDIR}/${FULLPKGNAME}/amd64-unknown-openbsd

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${LOCALBASE}/lib"

CXXFLAGS +=		-std=c++14

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gui
.else

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets X11
WANTLIB += Qt5Test boost_chrono-mt boost_timer-mt boost_unit_test_framework-mt
WANTLIB += X11-xcb Xdamage Xext Xfixes Xxf86vm dbus-1 drm execinfo
WANTLIB += expat freetype glapi glib-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv icudata icui18n icuuc intl miniupnpc
WANTLIB += pcre pcre2-16 png qrencode xcb xcb-dri2 double-conversion
WANTLIB += xcb-dri3 xcb-glx xcb-present xcb-sync xcb-xfixes xshmfence
WANTLIB += z

MODULES +=		x11/qt5

LIB_DEPENDS +=		graphics/libqrencode \
			math/double-conversion \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui=qt5

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

SUBST_VARS +=		VARBASE

post-install:
	cd ${WRKBUILD}/src/secp256k1 && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	cd ${WRKBUILD}/src/univalue && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/dashpay
	${INSTALL_SCRIPT} ${WRKDIST}/share/rpcauth/rpcauth.py \
		${PREFIX}/share/dashpay/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dashpay
	${INSTALL_DATA} ${WRKDIST}/contrib/debian/examples/dash.conf \
		${PREFIX}/share/examples/dashpay
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/dashpay
	${INSTALL_DATA} ${WRKDIST}/contrib/*.bash-completion \
		${PREFIX}/share/bash-completion/completions/dashpay
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dashpay
	${INSTALL_DATA} ${WRKDIST}/doc/{assets-attribution.md,benchmarking.md} \
		${PREFIX}/share/doc/dashpay
	${INSTALL_DATA} ${WRKDIST}/doc/{bips.md,dnsseed-policy.md,fuzzing.md} \
		${PREFIX}/share/doc/dashpay
	${INSTALL_DATA} ${WRKDIST}/doc/{reduce-traffic.md,tor.md} \
		${PREFIX}/share/doc/dashpay
	${INSTALL_DATA} ${WRKDIST}/doc/translation_process.md \
		${PREFIX}/share/doc/dashpay
	${INSTALL_DATA} ${WRKDIST}/doc/translation_strings_policy.md \
		${PREFIX}/share/doc/dashpay

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
.for s in 16 32 64 128 256
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/dash${s}.png \
		${PREFIX}/share/pixmaps/dash${s}.png
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/dash${s}.xpm \
		${PREFIX}/share/pixmaps/dash${s}.xpm
.endfor
.endif

.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
