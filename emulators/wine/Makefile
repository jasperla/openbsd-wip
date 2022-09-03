COMMENT =	compatibility layer to run Windows applications
DISTNAME =	wine-7.2

SHARED_LIBS +=	wine	1.0 # 1.0

CATEGORIES =	emulators

HOMEPAGE =	https://www.winehq.org/

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

# LGPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau c c++abi m pthread xcb xcb-render
WANTLIB += xcb-shm Xdmcp

MASTER_SITES =		https://dl.winehq.org/wine/source/7.x/
EXTRACT_SUFX =		.tar.xz

#COMPILER =		ports-gcc
#MODULES =		???

#BUILD_DEPENDS =		devel/bison
#RUN_DEPENDS =		???
BUILD_DEPENDS =		devel/bison

#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS = --verbose \
		--disable-kerberos \
		--disable-tests \
		--enable-win64 \
		--with-pthread \
		--without-capi \
		--without-coreaudio \
		--without-dbus \
		--without-gettext \
		--without-gettextpo \
		--without-gphoto \
		--without-gssapi \
		--without-gstreamer \
		--without-inotify \
		--without-krb5 \
		--without-ldap \
		--without-mingw \
		--without-netapi \
		--without-openal \
		--without-opencl \
		--without-osmesa \
		--without-oss \
		--without-pcap \
		--without-pulse \
		--without-sane \
		--without-udev \
		--without-usb \
		--without-v4l2 \
		--without-vkd3d \
		--without-vulkan

EXTRALIBS =		-lX11 -lXau -lc -lc++abi -lm -lpthread -lxcb -lxcb-render -lxcb-shm -lXdmcp
CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib ${EXTRALIBS} -Wl" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CPPBIN="$(CC)"

.include <bsd.port.mk>

