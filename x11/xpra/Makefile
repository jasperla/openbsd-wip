# $OpenBSD$

COMMENT=		persistent remote display server and client for X

MODPY_EGG_VERSION=	2.3
DISTNAME=		xpra-${MODPY_EGG_VERSION}

CATEGORIES=		x11

HOMEPAGE=		http://xpra.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI =              Yes
MODPY_SETUPTOOLS=       Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst avutil expat ffi fribidi
WANTLIB += gdk-x11-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz intl m pcre pixman-1 png pthread
WANTLIB += python2.7 swscale vpx webp x264 x265 xcb xcb-render
WANTLIB += xcb-shm xkbfile z

BUILD_DEPENDS =		lang/cython \
			x11/py-gtk2 \
			graphics/py-opengl \
			net/py-netifaces \
			math/py-numpy \
			graphics/py-Pillow \
			graphics/opencv \
			security/py-cryptography \
			x11/dbus-python \
			print/py-cups \
			net/py-websocket-client \
			net/websockify \
			archivers/py-lzo \
			textproc/py-yaml \
			audio/libogg \
			audio/flac \
			audio/speex \
			audio/wavpack \
			audio/lame \
			audio/twolame \
			audio/libmad \
			audio/libvorbis \
			audio/opus

RUN_DEPENDS =		x11/py-gtk2 \
			graphics/py-opengl \
			net/py-netifaces \
			math/py-numpy \
			graphics/py-Pillow \
			graphics/opencv \
			security/py-cryptography \
			x11/dbus-python \
			print/py-cups \
			net/py-websocket-client \
			net/websockify \
			archivers/py-lzo \
			textproc/py-yaml \
			audio/libogg \
			audio/flac \
			audio/speex \
			audio/wavpack \
			audio/lame \
			audio/twolame \
			audio/libmad \
			audio/libvorbis \
			audio/opus

LIB_DEPENDS =		multimedia/libvpx \
			multimedia/x264 \
			graphics/libwebp \
			graphics/png

#			graphics/ffmpeg \
#			py-rencode
#			pyyaml
#			py-lz4
#			libyuv
#			py-cuda
#			cuda
#			pynvml
#			gstreamer


do-build:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py build --with-tests --with-bundle_tests --pkg-config-path=${LOCALBASE}/lib/pkgconfig

do-install:
	cd ${WRKSRC} && env ${MODPY_BIN} setup.py install --with-tests --with-bundle_tests --pkg-config-path=${LOCALBASE}/lib/pkgconfig --root=${WRKINST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpra
	mv ${WRKINST}${LOCALBASE}${SYSCONFDIR}/* ${PREFIX}/share/examples/xpra/.

.include <bsd.port.mk>
