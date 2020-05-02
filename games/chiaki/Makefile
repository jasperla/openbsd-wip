# $OpenBSD: Makefile.template,v 1.87 2020/03/22 17:18:01 cwen Exp $

COMMENT =	open source PS4 remote play client 

V =		v1.2.0
DISTNAME =	chiaki-${V}-src
PKGNAME =	${DISTNAME:S/-v/-/g:S/-src//g}

WRKSRC =	${WRKDIR}/chiaki

CATEGORIES =	games

HOMEPAGE =	https://github.com/thestr4ng3r/chiaki

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5OpenGL Qt5Svg Qt5Widgets SDL2 avcodec avutil c crypto
WANTLIB += m opus

MASTER_SITES =		https://github.com/thestr4ng3r/chiaki/releases/download/${V}/

MODULES =		devel/cmake \
			x11/qt5

RUN_DEPENDS =		devel/py-protobuf,python3
LIB_DEPENDS =		devel/sdl2 \
			audio/opus \
			graphics/ffmpeg \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg
			

.include <bsd.port.mk>
