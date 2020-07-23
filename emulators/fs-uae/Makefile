# $OpenBSD: Makefile,v 1.33 2019/07/26 22:00:42 cwen Exp $

BROKEN-alpha =		error: invalid 'asm': invalid %xn code

COMMENT =		modern Amiga emulator
V =			3.0.5
MODPY_EGG_VERSION =	${V}
DISTNAME =		fs-uae-$V
CATEGORIES =		emulators

HOMEPAGE =		https://fs-uae.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2, LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL2 X11 c glib-2.0 gthread-2.0 intl m mpeg2 mpeg2convert
WANTLIB += openal png pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${HOMEPAGE}stable/$V/

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			graphics/libmpeg2 \
			audio/openal \
			devel/glib2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

CONFIGURE_ARGS =	--disable-jit \
			--disable-slirp

CXXFLAGS +=		-std=gnu++03

# Build system fails to pass down flags to include OpenAL stuff.
CFLAGS +=		-DHAVE_AL_AL_H -DHAVE_AL_ALC_H

MAKE_FLAGS +=		prefix=${PREFIX} CXXFLAGS="${CXXFLAGS}"
MAKE_FLAGS +=		CFLAGS="${CFLAGS}" CXX="${CXX}"

# Amiga FPU initialisation uses RWX pages, maybe other cases too.
USE_WXNEEDED =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
