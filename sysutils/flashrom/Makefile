# $OpenBSD $

COMMENT =		utility for manipulations with flash chips
V=				0.9.6.1
DISTNAME =		flashrom-${V}

EXTRACT_SUFX = 	.tar.bz2

CATEGORIES =		sysutils
HOMEPAGE =			http://flashrom.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.flashrom.org/releases/

BUILD_DEPENDS =		devel/gmake

LIB_DEPENDS =		sysutils/pciutils \
					devel/libftdi

WANTLIB += c m stdc++

USE_GMAKE =  			Yes

post-install:
		${INSTALL_PROGRAM}	${WRKSRC}/flashrom ${PREFIX}/bin/
		${INSTALL_DATA_DIR}	${PREFIX}/share/flashrom/
		${INSTALL_DATA_DIR}	${PREFIX}/share/flashrom/Documentation/
		${INSTALL_DATA} ${WRKSRC}/{COPYING,ChangeLog,README}	${PREFIX}/share/flashrom/
		${INSTALL_DATA} ${WRKSRC}/Documentation/*	${PREFIX}/share/flashrom/Documentation/

.include <bsd.port.mk>
