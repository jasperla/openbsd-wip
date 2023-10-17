COMMENT =		next neneration GoldenDict
CATEGORIES =		textproc education x11

DIST_TUPLE =		github	xiaoyifang	goldendict-ng	\
				v23.09.29-MoonCake.7f0f8778	.
PKGNAME =		${DISTNAME:C/-[[:alnum:].]*$//}

# GPLv3+
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Svg Qt6TextToSpeech
WANTLIB += Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 Xtst bz2 c fmt hunspell-1.7 iconv
WANTLIB += lzma lzo2 m opencc vorbis vorbisfile xapian z

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		audio/libvorbis \
			archivers/bzip2 \
			archivers/lzo2 \
			archivers/xz \
			converters/libiconv \
			converters/opencc \
			devel/fmt \
			textproc/hunspell \
			x11/qt6/qt5compat \
			x11/qt6/qtmultimedia \
			x11/qt6/qtsvg \
			x11/qt6/qtwebengine

# ${WRKSRC}/CMakeLists.txt requires and links it unconditionally
LIB_DEPENDS +=		x11/qt6/qtspeech
#CONFIGURE_ARGS +=	-DWITH_TTS=OFF

# ${WRKSRC}/CMakeLists.txt =OFF does not require it, but
# WRKSRC}/src/ftshelpers.cc uses it unconditionally
LIB_DEPENDS +=		databases/xapian-core
#CONFIGURE_ARGS +=	-DWITH_XAPIAN=OFF

# use "-ng" suffix, disable all optional features, pick devel/fmt over bundle
CONFIGURE_ARGS =	-DUSE_ALTERNATIVE_NAME=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DUSE_SYSTEM_FMT=ON \
			-DWITH_EPWING_SUPPORT=OFF \
			-DWITH_FFMPEG_PLAYER=OFF \
			-DWITH_ZIM=OFF

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
