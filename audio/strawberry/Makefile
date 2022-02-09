# $OpenBSD$

COMMENT =	music player and music collection organizer

GH_ACCOUNT =	strawberrymusicplayer
GH_PROJECT =	strawberry
GH_TAGNAME =	1.0.1
PKGNAME =	strawberry-${GH_TAGNAME}

CATEGORIES =	audio x11

HOMEPAGE =	https://www.strawberrymusicplayer.org/

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Widgets Qt5X11Extras SM
WANTLIB += X11 Xext c chromaprint execinfo fftw3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnutls gobject-2.0 gpod gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 iconv intl m mtp protobuf pulse
WANTLIB += sqlite3 tag xcb z

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/libgpod \
			audio/pulseaudio \
			audio/taglib \
			devel/libmtp \
			devel/protobuf \
			math/fftw3 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			x11/qt5/qtx11extras

# Character encoding test fails:
# https://github.com/strawberrymusicplayer/strawberry/issues/886
TEST_DEPENDS =		${MODPY_BUILD_DEPENDS}
TEST_TARGET =		strawberry_tests
TEST_IS_INTERACTIVE =	X11
TEST_ENV +=		LC_ALL=en_US.UTF-8

# Should this be in qt5.port.mk with the other *_DIR envs?
CONFIGURE_ENV +=	QT_DIR=${MODQT5_LIBDIR}/cmake/Qt5/

# Disable VLC support for now.
CONFIGURE_ARGS +=	-DENABLE_VLC=OFF

# CD audio broken:
# https://github.com/strawberrymusicplayer/strawberry/issues/887
CONFIGURE_ARGS +=	-DENABLE_AUDIOCD=OFF

# Tries to use ccache if it is installed.
CONFIGURE_ARGS +=	-DCCACHE_EXECUTABLE=

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

.include <bsd.port.mk>
