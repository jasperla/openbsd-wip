# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		gpu-accelerated texture tools

V =			2.0.8-1
DISTNAME =		nvidia-texture-tools-${V}
PKGNAME =		nvtt-${V:S/-/./}

SHARED_LIBS +=		nvcore 0.0 # 2.0.8
SHARED_LIBS +=		nvimage 0.0 # 2.0.8
SHARED_LIBS +=		nvmath 0.0 # 2.0.8
SHARED_LIBS +=		nvtt 0.0 # 2.0.8


CATEGORIES =		graphics

HOMEPAGE =		https://code.google.com/p/nvidia-texture-tools/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	Half Iex IlmImf IlmThread Imath c jpeg m png pthread
WANTLIB +=	stdc++ tiff z

MASTER_SITES =		https://nvidia-texture-tools.googlecode.com/files/

MODULES =		devel/cmake
LIB_DEPENDS =		graphics/openexr \
			graphics/glew \
			graphics/jpeg \
			graphics/png \
			graphics/tiff

CONFIGURE_ARGS =	-DNVTT_SHARED=1
CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -pthread"

WRKDIST =		${WRKDIR}/nvidia-texture-tools

.include <bsd.port.mk>
