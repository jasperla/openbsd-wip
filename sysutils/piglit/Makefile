# $OpenBSD $

COMMENT =		piglit is an OpenGL test suite
V=				1
DISTNAME =		piglit-v${V}

EXTRACT_SUFX = 	.tar.gz

CATEGORIES =		devel sysutils
HOMEPAGE =			http://cgit.freedesktop.org/piglit/snapshot/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES            = ${HOMEPAGE}/snapshot/

WANTLIB += c m stdc++

LIB_DEPENDS =		graphics/freeglut \
					graphics/png

USE_GMAKE =  			Yes

.include <bsd.port.mk>
