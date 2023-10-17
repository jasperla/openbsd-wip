COMMENT =		next neneration GoldenDict
CATEGORIES =		textproc education x11

DIST_TUPLE =		github	xiaoyifang	goldendict-ng	\
				v23.09.29-MoonCake.7f0f8778	.
PKGNAME =		${DISTNAME:C/-[[:alnum:].]*$//}

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt6

# needs unported x11/qt6/qtspeech
LIB_DEPENDS =		audio/libvorbis \
			archivers/bzip2 \
			archivers/lzo2 \
			archivers/xz \
			converters/libiconv \
			converters/opencc \
			devel/fmt \
			textproc/hunspell \
			x11/gnome/at-spi2-core \
			x11/qt6/qtwebengine

# disable all optional features, pick devel/fmt over bundle
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DUSE_SYSTEM_FMT=ON \
			-DWITH_EPWING_SUPPORT=OFF \
			-DWITH_FFMPEG_PLAYER=OFF \
			-DWITH_TTS=OFF \
			-DWITH_XAPIAN=OFF \
			-DWITH_ZIM=OFF


.include <bsd.port.mk>
