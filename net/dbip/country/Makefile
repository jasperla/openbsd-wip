# $OpenBSD$

COMMENT =	DB-IP IP to Country Lite: IPv4/v6 address to country

DISTNAME =	dbip-country-lite-2020-03.mmdb
PKGNAME =	dbip-country-lite-20200301
EXTRACT_SUFX =	.gz

NO_BUILD =	Yes

WRKDIST =	${WRKDIR}

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-country-lite.mmdb

.include <bsd.port.mk>
