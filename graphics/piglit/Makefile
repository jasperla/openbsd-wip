# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	automated OpenGL and OpenCL testsuite

DISTNAME =	piglit-20180108

# mesa3d github mirror (which should be official one)
GH_ACCOUNT =	mesa3d
GH_PROJECT =	piglit
GH_COMMIT =	8eefd87ed7a7be9b181bbe7d12a6f6c54921d522

CATEGORIES =	graphics

#MAINTAINER =		???

# 3Dlabs: redistribution and use permitted, no comment on selling
# Intel CUSTOM LICENSE - no limitation to use, distribute, or sell
# MIT GPLv2+ GPLv3 LGPL20
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xrender c drm drm_intel
WANTLIB += m xcb xcb-dri2 z
WANTLIB += png waffle-1

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		${_MODPY_BUILD_DEPENDS} \
			www/py-mako \
			graphics/waffle \
			devel/py-six

LIB_DEPENDS =		graphics/waffle \
			graphics/png

CONFIGURE_ARGS =	-DPIGLIT_BUILD_CL_TESTS:BOOL=OFF \
			-DCMAKE_POLICY_DEFAULT_CMP0056:STRING=NEW
CONFIGURE_ENV =		CFLAGS="-I/usr/X11R6/include"

NO_TEST =		Yes

.include <bsd.port.mk>
