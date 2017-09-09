# $OpenBSD$

V =		20170909
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
MAKE_FLAGS =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST =	Yes

pre-configure:
	sed -i -e 's,-I$$(SRCDIR)/SDL2/include,-I${LOCALBASE}/include/SDL2,g' \
		-e 's,-O2,,g' ${WRKSRC}/makefile

# No upstream install target.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/postal1 ${PREFIX}/bin

.include <bsd.port.mk>
