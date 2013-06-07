# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		z80 assembler from XL2S Entertainment

# http://home.wanadoo.nl/smastijn/sjasm42c.zip
DISTNAME =		sjasm42c
PKGNAME =		sjasm-42c
EXTRACT_SUFX =		.zip

CATEGORIES =		devel

HOMEPAGE =		http://home.wanadoo.nl/smastijn/sjasm.html

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/sjasmsrc42c

WANTLIB +=		c m stdc++

MASTER_SITES =		http://home.wanadoo.nl/smastijn/

USE_GMAKE =		Yes

MAKE_FLAGS =		"CXXFLAGS=${CXXFLAGS}"

# XXX NO TEST

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sjasm ${PREFIX}/bin/

.include <bsd.port.mk>
