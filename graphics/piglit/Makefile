# $OpenBSD$

COMMENT =		an OpenGL test suite
DISTNAME =		piglit-master
PKGNAME =		piglit-0.1

CATEGORIES =		devel graphics
HOMEPAGE =		http://people.freedesktop.org/~nh/piglit/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://cgit.freedesktop.org/piglit/snapshot/

#WANTLIB += c m stdc++

MODULES =               devel/cmake

BUILD_DEPENDS =		www/py-mako

LIB_DEPENDS =		graphics/freeglut \
			graphics/png \
			graphics/tiff

#CONFIGURE_STYLE = 	cmake

.include <bsd.port.mk>
