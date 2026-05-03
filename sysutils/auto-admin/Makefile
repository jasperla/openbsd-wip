COMMENT =		Portable tools for automating systems management

# Suffix version with .commit# from git describe --tags
V =			0.8.4.31
COMMIT =		102750132504cbf31ebe23d171fb5e1632a11e86
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
