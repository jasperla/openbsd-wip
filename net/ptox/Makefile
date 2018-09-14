# $OpenBSD: Makefile,v 1.4 2018/08/09 23:25:58 sthen Exp $

COMMENT =	portable Tox client

GH_ACCOUNT =	OrangeGrayCyan
GH_PROJECT =	ptox
GH_TAGNAME =	0.2

CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xrender c filteraudio fontconfig freetype
WANTLIB += m openal opus pthread sodium toxcore v4lconvert vpx

MODULES =	devel/cmake

BUILD_DEPENDS = devel/check

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	audio/filteraudio \
		audio/openal \
		multimedia/libv4l \
		net/toxcore

.include <bsd.port.mk>
