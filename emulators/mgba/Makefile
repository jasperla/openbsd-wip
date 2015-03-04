# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		Game Boy Advance emulator

V = 0.1.1
DISTNAME =		mgba-$V

SHARED_LIBS +=  mgba                      0.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://endrift.com/mgba/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE MagickCore MagickWand Qt5Core Qt5Gui Qt5OpenGL
WANTLIB += Qt5Widgets SDL SM X11 Xext avcodec avformat avresample
WANTLIB += avutil c edit m png pthread swscale termcap z zip

# specify the COMMIT as well as the TAG in case upstream slide the tag.
GH_ACCOUNT =		mgba-emu
GH_PROJECT =		mgba
GH_TAGNAME =		$V
GH_COMMIT =		9ae2d7ad3e8f8486e7aa25ed16bf6f56111a81f8

MODULES =		devel/cmake \
			gcc4 \
			x11/qt5
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS =		archivers/libzip \
			graphics/ImageMagick \
			graphics/ffmpeg \
			devel/sdl

NO_TEST =		Yes

.include <bsd.port.mk>
