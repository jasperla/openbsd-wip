# $OpenBSD$

COMMENT =		a pastebin-like service

DISTNAME =		fiche
CATEGORIES =		www

GH_ACCOUNT =		solusipse
GH_PROJECT =		fiche
GH_COMMIT =		a85e04d8160a30c2a6e365b59189842fc5bca670
DISTNAME =		fiche-20150504

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall -lpthread" \
		LDFLGS="${LDFLAGS} -lpthread"

post-extract:
	 perl -i -ne '/^CFLAGS/ or print' ${WRKDIST}/Makefile

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fiche ${PREFIX}/bin/fiche

.include <bsd.port.mk>
