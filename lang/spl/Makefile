# $OpenBSD$

COMMENT =		Shakespeare programming language

DISTNAME =		spl-1.2.1

CATEGORIES =		lang

HOMEPAGE =		http://shakespearelang.sourceforge.net

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/download/

BUILD_DEPENDS =		devel/bison

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}" CCFLAGS="${CFLAGS} -Wall"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spl2c ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libspl.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/spl/include/spl.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spl
	${INSTALL_DATA} ${WRKSRC}/examples/*.spl ${PREFIX}/share/examples/spl

.include <bsd.port.mk>
