COMMENT =	cross-platform multimedia library

V =	3.2.0

DISTNAME =	SDL3-${V}
PKGNAME =	${DISTNAME:L}

SHARED_LIBS +=  SDL3	0.0	# 3.2.0

CATEGORIES =	devel

HOMEPAGE =	https://libsdl.org/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE = Yes

WANTLIB += EGL X11 Xcursor Xext Xfixes Xi Xrandr Xrender Xss m
WANTLIB += pthread sndio wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon

SITES =		https://github.com/libsdl-org/SDL/releases/download/release-${V}/

# Standard for C++ ports:
#COMPILER =		base-clang ports-gcc base-gcc
# Standard for C++11 or newer:
#COMPILER =		base-clang ports-gcc
# Ports that require a non-default compiler that do *not* use C++ should set this:
#COMPILER_LANGS =	c

MODULES =	devel/cmake
MODCMAKE_LDFLAGS = ${LDFLAGS}

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =	wayland/wayland \
		x11/xkbcommon
#TEST_DEPENDS =		???

CONFIGURE_ARGS = -DSDL_HIDAPI=OFF \
		-DSDL_IBUS=OFF \
		-DSDL_JACK=OFF \
		-DSDL_LIBUDEV=OFF \
		-DSDL_OPENGL=ON \
		-DSDL_PIPEWIRE=OFF \
		-DSDL_PULSEAUDIO=OFF \
		-DSDL_SNDIO_SHARED=OFF \
		-DSDL_TESTS=ON \
		-DSDL_WAYLAND_SHARED=OFF \
		-DSDL_X11_SHARED=OFF
#CONFIGURE_ENV =	???

#DEBUG_CONFIGURE_ARGS =	???
#DEBUG_PACKAGES = ${BUILD_PACKAGES}

#NO_TEST =		Yes

CFLAGS +=	-I${X11BASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib -L${X11BASE}/lib
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

.include <bsd.port.mk>
