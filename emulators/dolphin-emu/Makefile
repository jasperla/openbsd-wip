# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT-main =		Nintendo GameCube and Wii emulator with GUI
COMMENT-nogui =		Nintendo GameCube and Wii emulator

V =			5.0
DISTNAME =		dolphin-emu-$V
PKGNAME-main =		dolphin-emu-$V
PKGNAME-nogui =		dolphin-emu-nogui-$V

MULTI_PACKAGES =	-main -nogui

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		https://dolphin-emu.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB =		GL GLU ICE SDL2 SM SoundTouch X11 Xext Xi Xrandr ao \
			atk-1.0 avcodec avformat avutil c cairo curl estdc++ \
			gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
			gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
			lzo2 m mbedcrypto mbedtls mbedx509 miniupnpc openal \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 \
			png portaudio pthread pulse sfml-network sfml-system \
			swscale usb-1.0 z

WANTLIB-main =		${cWANTLIB}
#dolphin-emu-5.0-main(emulators/dolphin-emu,-main):
#Missing lib: libwx_baseu-3.0.so.0 (/usr/local/bin/dolphin-emu) (NOT REACHABLE)
#Missing lib: libwx_gtk2u_adv-3.0.so.0 (/usr/local/bin/dolphin-emu) (NOT REACHABLE)
#Missing lib: libwx_gtk2u_aui-3.0.so.0 (/usr/local/bin/dolphin-emu) (NOT REACHABLE)
#Missing lib: libwx_gtk2u_core-3.0.so.0 (/usr/local/bin/dolphin-emu) (NOT REACHABLE)
WANTLIB-nogui =		${cWANTLIB}

GH_ACCOUNT =		dolphin-emu
GH_PROJECT =		dolphin
GH_TAGNAME =		$V

MODULES =		devel/cmake \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS-nogui =	archivers/lzo2 \
			audio/libao \
			audio/openal \
			audio/portaudio-svn \
			audio/pulseaudio \
			audio/soundtouch \
			converters/libiconv \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			multimedia/sfml \
			net/curl \
			net/miniupnp/miniupnpc \
			security/polarssl \
			x11/gtk+2
LIB_DEPENDS-main =	${LIB_DEPENDS-nogui} \
			x11/wxWidgets3
RUN_DEPENDS-main =	devel/desktop-file-utils \
			emulators/dolphin-emu,-nogui \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-Dmandir:=${PREFIX}/man

.include <bsd.port.mk>
