# $OpenBSD: Makefile,v 1.5 2018/06/29 22:16:14 espie Exp $

# All patches are upstreamed, it's C11 now so we don't need C99 CFLAGS anymore.
# They moved from Cmake to Meson, and from SDL to SDL2 (dropping openal for
# audio), GH_ACCOUNT changed.

# Requires OpenGL>=3.3 or OpenGL ES>=3.0, so only for "modern" (>=2008)
# architectures that may have compatible video controllers. i386 has been
# added in case an amd64 machine runs an i386 install.
ONLY_FOR_ARCHS =	amd64 aarch64 i386

COMMENT =		clone of the touhou games

GH_ACCOUNT =		taisei-project
GH_PROJECT =		taisei
GH_TAGNAME =		v1.2

CATEGORIES =		games

HOMEPAGE =		https://taisei-project.org/

# MIT
# Soundtrack: CC-BY 4.0 / Photos: PD and CC-0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		SDL2 SDL2_mixer SDL2_ttf c m png16 z

MODULES =		devel/meson \
			lang/python

MODPY_RUNDEP =		No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/sdl2>=2.0.5 \
			devel/sdl2-ttf \
			devel/sdl2-mixer \
			graphics/png>=1.5.0

# Don't include docs
# Don't zip the ressources, it avoids using archivers/libzip
# Build with GLES 3
CONFIGURE_ARGS +=	-Ddocs=false \
			-Dpackage_data=false \
			-Dr_gles30=true \
			-Dshader_transpiler=true

NO_TEST =		Yes

.include <bsd.port.mk>
