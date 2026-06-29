COMMENT =		Portable tools for automating systems management

# Suffix version with .commit# from git describe --tags
V =			0.8.5.2
COMMIT =		408d45588807b6d6005d6b722afa7aa67c1e5319
PKGNAME =		auto-admin-${V}

DIST_TUPLE =		github outpaddling auto-admin ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/outpaddling/auto-admin

# 2BSD
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
