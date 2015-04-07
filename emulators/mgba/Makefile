# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		Game Boy Advance emulator

V =			0.2.0
DISTNAME =		mgba-$V

SHARED_LIBS +=  mgba                      0.0 # 0.1

CATEGORIES =		emulators

HOMEPAGE =		https://endrift.com/mgba/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU MagickCore MagickWand Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5OpenGL Qt5Widgets SDL avcodec avformat
WANTLIB += avresample avutil c edit m png pthread swscale termcap
WANTLIB += z zip

GH_ACCOUNT =		mgba-emu
GH_PROJECT =		mgba
GH_TAGNAME =		$V

MODULES =		devel/cmake \
			gcc4 \
			x11/qt5
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
LIB_DEPENDS =		archivers/libzip \
			graphics/ImageMagick \
			graphics/ffmpeg \
			devel/sdl

CONFIGURE_ARGS +=	-DUSE_PIXMAN=No

NO_TEST =		Yes

.include <bsd.port.mk>
