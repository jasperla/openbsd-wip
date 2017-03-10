# $OpenBSD$

COMMENT =		collection of tools for development and testing of the Intel DRM driver

DISTNAME =		intel-gpu-tools-1.5

CATEGORIES =		graphics sysutils
HOMEPAGE =		

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		https://cgit.freedesktop.org/xorg/app/intel-gpu-tools/

BUILD_DEPENDS =		devel/swig \
			graphics/cairo \
			lang/python/3.4,-main \
			sysutils/pciutils

WANTLIB += 		

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-dumper \
			--disable-nouveau \
			--disable-tests \
			--disable-selective-werror

.include <bsd.port.mk>
