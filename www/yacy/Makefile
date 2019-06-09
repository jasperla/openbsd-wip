# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

PKG_ARCH =	*

COMMENT =	distributed search engine

V =		1.92
DISTNAME =	yacy_v$V_20161226_9000
PKGNAME =	yacy-$V

CATEGORIES =	www

HOMEPAGE =	https://yacy.net/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://yacy.net/release/

MODULES =		java
MODJAVA_VER =		1.8+
RUN_DEPENDS =		${MODJAVA_RUN_DEPENDS}

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/yacy

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/yacy
	cp -R ${WRKSRC}/{defaults,htroot,lib} ${PREFIX}/share/yacy

.include <bsd.port.mk>
