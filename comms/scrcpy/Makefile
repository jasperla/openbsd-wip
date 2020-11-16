# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT-main =		display and control your Android device
COMMENT-server =	phone-side executable for scrcpy

PKG_ARCH-server =	*

V =		1.16

PKGNAME-main =	scrcpy-$V

GH_ACCOUNT =	Genymobile
GH_PROJECT =	scrcpy
GH_TAGNAME =	v$V

CATEGORIES =	comms

MULTI_PACKAGES =	-main -server

.include <bsd.port.arch.mk>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB-main += SDL2 avcodec avformat avutil c

MASTER_SITES0 =	https://github.com/Genymobile/scrcpy/releases/download/v$V/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		scrcpy-server-v$V:0
EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/meson

MODMESON_CONFIGURE_ARGS =	-Dprebuilt_server=${DISTDIR}/scrcpy-server-v$V

RUN_DEPENDS-main =	devel/adb \
			comms/scrcpy,-server
LIB_DEPENDS-main =	graphics/ffmpeg

DEBUG_PACKAGES-main = ${BUILD_PACKAGES}

.include <bsd.port.mk>
