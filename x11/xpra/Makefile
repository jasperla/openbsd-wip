# $OpenBSD$

COMMENT=		persistent remote display server and client for X

DISTNAME=		xpra-${MODPY_EGG_VERSION}
PKGNAME=		xpra-${MODPY_EGG_VERSION}

CATEGORIES=		x11

HOMEPAGE=		https://xpra.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 XRes Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xpresent Xrandr Xtst aom atk-1.0 avif cairo
WANTLIB += cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 harfbuzz intl lz4 m pango-1.0
WANTLIB += pangocairo-1.0 pthread turbojpeg vpx webp x264 xkbfile xxhash

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_EGG_VERSION=	6.5.5
MODPY_DISTV=		6.5.5
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		archivers/py-lz4 \
			audio/flac \
			audio/lame \
			audio/libmad \
			audio/libogg \
			audio/libvorbis \
			audio/opus \
			audio/speex \
			audio/twolame \
			audio/wavpack \
			devel/desktop-file-utils \
			devel/py-gobject3 \
			graphics/libwebp \
			graphics/opencv \
			graphics/py-cairo \
			graphics/py-Pillow \
			graphics/py-opengl \
			lang/cython \
			math/py-numpy \
			misc/shared-mime-info \
			multimedia/x264 \
			net/py-netifaces \
			net/py-websocket-client \
			net/websockify \
			print/py-cups \
			security/py-cryptography \
			textproc/py-yaml \
			x11/dbus-python \
			x11/gtk+3 \
			x11/py-gtk2

RUN_DEPENDS =		archivers/py-lz4 \
			audio/flac \
			audio/lame \
			audio/libmad \
			audio/libogg \
			audio/libvorbis \
			audio/opus \
			audio/speex \
			audio/twolame \
			audio/wavpack \
			devel/desktop-file-utils \
			devel/py-gobject3 \
			graphics/py-cairo \
			graphics/py-Pillow \
			graphics/py-opengl \
			math/py-numpy \
			misc/shared-mime-info \
			net/py-netifaces \
			net/py-websocket-client \
			net/websockify \
			print/py-cups \
			security/py-cryptography \
			textproc/py-yaml \
			x11/dbus-python \
			x11/gtk+3 \
			x11/py-gtk2

LIB_DEPENDS =		archivers/lz4 \
			x11/gnome/at-spi2-core \
			devel/gettext \
			devel/glib2 \
			devel/harfbuzz \
			devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			graphics/jpeg \
			graphics/libavif \
			graphics/libwebp \
			multimedia/aom \
			multimedia/libvpx \
			multimedia/x264 \
			sysutils/xxhash \
			x11/gtk+3

CFLAGS +=		-I${LOCALBASE}/include

NO_TEST =		Yes

pre-configure:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py clean --all 2>/dev/null || true

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} setup.py build \
		--without-Xdummy \
		--without-Xdummy_wrapper \
		--without-uinput \
		--without-pam \
		--without-service \
		--without-sd_listen \
		--without-wayland_client \
		--without-wayland_server \
		--without-v4l2 \
		--without-wireshark

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} setup.py install \
		--without-Xdummy \
		--without-Xdummy_wrapper \
		--without-uinput \
		--without-pam \
		--without-service \
		--without-sd_listen \
		--without-wayland_client \
		--without-wayland_server \
		--without-v4l2 \
		--without-wireshark \
		--root=${WRKINST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpra
	mv ${WRKINST}/etc/xpra ${PREFIX}/share/examples/xpra/xpra
	mv ${WRKINST}/etc/X11 ${PREFIX}/share/examples/xpra/X11
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/xpra/dbus-1
	rm -rf ${WRKINST}/etc ${WRKINST}/usr/lib ${WRKINST}/usr/lib64
	rm -rf ${WRKINST}${LOCALBASE}/lib/sysusers.d \
		${WRKINST}${LOCALBASE}/lib/tmpfiles.d \
		${WRKINST}${LOCALBASE}/include ${WRKINST}${LOCALBASE}/info \
		${WRKINST}${LOCALBASE}/libdata ${WRKINST}${LOCALBASE}/lib/X11 \
		${WRKINST}${LOCALBASE}/lib/pkgconfig

.include <bsd.port.mk>
