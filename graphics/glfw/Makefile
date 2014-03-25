# $OpenBSD$

COMMENT =	library for creating and managing windows with OpenGL
DISTNAME =	glfw-3.0.4
EXTRACT_SUFX =	.zip
CATEGORIES =	graphics devel

SHARED_LIBS +=	glfw                      0.0 # 3.0

HOMEPAGE =	http://www.glfw.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xi Xrandr Xxf86vm m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=glfw/}

MODULES =	devel/cmake
CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS:Bool=True \
			-DGLFW_BUILD_DOCS:Bool=False

NO_TEST =	Yes

.include <bsd.port.mk>
