# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $

COMMENT =	futuristic, fast-paced first person shooter

DISTNAME =	warsow_21_sdk
PKGNAME =	warsow-2.1

CATEGORIES =	games

HOMEPAGE =	https://warsow.net/

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

MASTER_SITES =	http://slice.sh/warsow/

COMPILER =	base-clang
MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		lang/angelscript \
		multimedia/libtheora \
		net/curl

CFLAGS +=	-I/usr/local/include/SDL
CONFIGURE_ARGS =	-DQFUSION_GAME=Warsow

WRKSRC =	${WRKDIST}/source/source

.include <bsd.port.mk>
