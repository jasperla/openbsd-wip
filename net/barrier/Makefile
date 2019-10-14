# $OpenBSD: Makefile,v 1.29 2015/10/21 19:51:28 jturner Exp $

COMMENT =		mouse and keyboard sharing utility

VERSION =		2.3.2
DISTNAME =		barrier-${VERSION}
CATEGORIES =		net x11

GH_ACCOUNT =		debauchee
GH_PROJECT =		barrier
GH_TAGNAME =		v${VERSION}

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += SM X11 Xext Xi Xinerama Xrandr Xtst c crypto curl dns_sd
WANTLIB += m ssl

LIB_DEPENDS =		net/curl

BLUID_DEPENDS =		net/avahi

MODULES =		devel/cmake \
			x11/qt5

NO_TEST =		Yes

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${WRKSRC}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-*/bin/barrier* ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barrier
	${INSTALL_DATA} ${WRKSRC}/doc/barrier.conf.exampl* \
		${PREFIX}/share/examples/barrier/
	${INSTALL_MAN} ${WRKSRC}/doc/barrierc.1 \
		${PREFIX}/man/man1/barrierc.1
	${INSTALL_MAN} ${WRKSRC}/doc/barriers.1 \
		${PREFIX}/man/man1/barriers.1

.include <bsd.port.mk>
