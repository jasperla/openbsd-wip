# $OpenBSD$

COMMENT =		Layer 2 Tunneling Protocol (L2TP) daemon

DISTNAME =		xl2tpd-1.3.0

CATEGORIES =		net

HOMEPAGE =		http://www.xelerance.com/software/xl2tpd/

#MAINTAINER =		???

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c util

#MASTER_SITES =		${HOMEPAGE}
MASTER_SITES = 		http://www.xelerance.com/wp-content/uploads/software/xl2tpd/

MAKE_FLAGS =		"OSFLAGS=-DOPENBSD -I$/usr/include"

NO_REGRESS =		Yes

#CFLAGS =		-lutil
#LDFLAGS =		-lutil

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xl2tpd
	${INSTALL_DATA} ${WRKSRC}/doc/*.sample \
		${PREFIX}/share/examples/xl2tpd/

.include <bsd.port.mk>
