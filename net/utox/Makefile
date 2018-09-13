# $OpenBSD: Makefile,v 1.4 2018/08/09 23:25:58 sthen Exp $

COMMENT =	lightweight Tox client

V =		0.17.0

DISTNAME =	uTox-${V}-full
PKGNAME =	utox-${V}
MASTER_SITES =	https://github.com/uTox/uTox/releases/download/v${V}/
REVISION =	4

CATEGORIES =	net

HOMEPAGE =	https://utox.io

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xrender c dbus-1 filteraudio fontconfig
WANTLIB += freetype m openal opus pthread sodium toxcore v4lconvert
WANTLIB += vpx

CONFIGURE_ARGS =-DENABLE_TESTS=ON

MODULES =	devel/cmake

BUILD_DEPENDS = devel/check

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	audio/filteraudio \
		audio/openal \
		multimedia/libv4l \
		net/toxcore \
		x11/dbus

WRKDIST =	${WRKDIR}/uTox

.include <bsd.port.mk>
