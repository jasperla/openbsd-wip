# $OpenBSD$

COMMENT =		header-only C++ math library

DISTNAME =		glm-0.9.2.7

CATEGORIES =		devel

HOMEPAGE =		http://glm.g-truc.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogl-math/}
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DGLM_TEST_MODE=ON

.include <bsd.port.mk>
