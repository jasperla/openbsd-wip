# $OpenBSD$

COMMENT=	curses-based frame analysis for 802.11 monitor mode

GH_ACCOUNT=	br101
GH_PROJECT=	horst
GH_TAGNAME=	v5.1

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m pcap

NO_TEST=	Yes
USE_GMAKE=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MAKE_FLAGS=	PCAP=1 LIBNL=0 CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/horst ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/horst
	${INSTALL_DATA} ${WRKSRC}/horst.conf ${PREFIX}/share/examples/horst/
	${INSTALL_DATA} ${WRKSRC}/horst.8 ${PREFIX}/man/man8/
	${INSTALL_DATA} ${WRKSRC}/horst.conf.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
