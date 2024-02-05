COMMENT =		fast and smart SONOS controller
DIST_TUPLE =		github	janbar	noson-app	5.6.3	.
CATEGORIES =		audio net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} FLAC FLAC++ Qt5Core Qt5DBus Qt5Gui
WANTLIB +=	Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB +=	Qt5Svg Qt5Widgets Qt5Xml c crypto m ssl z

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		audio/flac \
			x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtsvg

# base sed(1) 'i \ text' requires literal newlines, GNU takes \n
BUILD_DEPENDS =		textproc/gsed

# fails to connect to PulseAudio, no clue yet why...
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Pulse=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Pulse-simple=ON

pre-build:
	# hand-roll byteorder.h patch for second copy unpacked during configure
	gsed -i \
	    -e '/^static inline int16_t swap16/i\#undef swap16' \
	    -e '/^static inline int32_t swap32/i\#undef swap32' \
	    ${WRKBUILD}/backend/lib/noson-src/noson/src/private/byteorder.h

.include <bsd.port.mk>
