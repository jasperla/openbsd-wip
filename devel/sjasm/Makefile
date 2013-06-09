# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		z80 assembler from XL2S Entertainment

# http://home.wanadoo.nl/smastijn/sjasm39g6.zip
DISTNAME =		sjasm39g6
PKGNAME =		sjasm-39g6
EXTRACT_SUFX =		.zip

CATEGORIES =		devel

HOMEPAGE =		http://home.wanadoo.nl/smastijn/sjasm.html

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/sjasmsrc39g6

WANTLIB +=		c m stdc++

MASTER_SITES =		http://home.wanadoo.nl/smastijn/

USE_GMAKE =		Yes

MAKE_FLAGS =		"CXXFLAGS=${CXXFLAGS} -DMAX_PATH=MAXPATHLEN"

# XXX NO TEST

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sjasm ${PREFIX}/bin/

.include <bsd.port.mk>
