# $OpenBSD$

V =		20171127
COMMENT =	official open source release of Postal 1
DISTNAME =	postal-1-open-source-${V}
PKGNAME =	postal1-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://runningwithscissors.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m

MASTER_SITES =	https://devio.us/~bcallah/source/

LIB_DEPENDS =	devel/sdl2

USE_GMAKE =	Yes
MAKE_FILE =	makefile
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" LINKER="${CXX}" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST =	Yes

# No upstream install target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/postal1 ${PREFIX}/bin

.include <bsd.port.mk>
