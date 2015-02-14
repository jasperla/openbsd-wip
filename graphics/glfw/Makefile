# $OpenBSD$

COMMENT =	open source, multi-platform library for creating windows
DISTNAME =	glfw-3.1
CATEGORIES =	graphics x11

SHARED_LIBS +=  glfw                      0.0 # 3.1

HOMEPAGE =	http://www.glfw.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcursor Xi Xinerama Xrandr Xxf86vm m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=glfw/}

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
