# $OpenBSD$

COMMENT =	console file manager
DISTNAME =	vfu-4.15
CATEGORIES =	misc

HOMEPAGE =	http://cade.datamax.bg/vfu/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pcre stdc++

MASTER_SITES =	http://cade.datamax.bg/vfu/

LIB_DEPENDS =	devel/pcre

USE_GMAKE =	Yes
# VFU uses non-standard variables here.
MAKE_FLAGS =	CC_1="${CXX}" CC_2="${CXX}" CC_3="${CXX}" LD_1="${CXX}" \
		CCDEF="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDDEF="-L${LOCALBASE}/lib"
MAKE_FILE =	makefile

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vfu/vfu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/vfu.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vfu
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/vfu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vfu
	${INSTALL_DATA} ${WRKSRC}/vfu.conf ${PREFIX}/share/examples/vfu

.include <bsd.port.mk>
