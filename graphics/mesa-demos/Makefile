# $OpenBSD $

COMMENT =		collection of OpenGL / Mesa demos and test programs
V=				8.1.0
DISTNAME =		mesa-demos-${V}

EXTRACT_SUFX = 	.tar.gz

CATEGORIES =		devel graphics
HOMEPAGE =			http://www.mesa3d.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES            = http://cgit.freedesktop.org/mesa/demos/snapshot/

WANTLIB += c m stdc++

LIB_DEPENDS =		graphics/glew

.include <bsd.port.mk>
