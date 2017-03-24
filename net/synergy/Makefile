# $OpenBSD: Makefile,v 1.29 2015/10/21 19:51:28 jturner Exp $

COMMENT=		mouse and keyboard sharing utility

VERSION=		1.8.8
DISTNAME=		synergy-${VERSION}
CATEGORIES=		net x11

GH_ACCOUNT=		symless
GH_PROJECT=		synergy
GH_TAGNAME=		v${VERSION}-stable

HOMEPAGE=		http://synergy-foss.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrandr Xtst c crypto curl
WANTLIB += m pthread ssl

LIB_DEPENDS=		net/curl

MODULES=		devel/cmake \
			gcc4

MODGCC4_LANGS = c c++
MODGCC4_ARCHS = *

NO_TEST=		Yes

CONFIGURE_ARGS+=	-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${WRKSRC}/lib"

post-extract:
	@cd ${WRKSRC}/ext && \
	unzip -d gmock-1.6.0 gmock-1.6.0.zip && \
	unzip -d gtest-1.6.0 gtest-1.6.0.zip

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/synergy[cds] ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	${INSTALL_DATA} ${WRKSRC}/doc/synergy.conf.exampl* \
		${PREFIX}/share/examples/synergy/
	${INSTALL_MAN} ${WRKSRC}/doc/synergyc.man \
		${PREFIX}/man/man1/synergyc.1
	${INSTALL_MAN} ${WRKSRC}/doc/synergys.man \
		${PREFIX}/man/man1/synergys.1

.include <bsd.port.mk>
