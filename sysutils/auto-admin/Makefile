COMMENT =		Portable tools for automating systems management

V =			0.8.0.58
COMMIT =		027974e01bd6f2ff5957eb25a8f3f05dcce0dbfa
PKGNAME =		auto-admin-${V}

DIST_TUPLE =		github outpaddling auto-admin ${COMMIT} .

CATEGORIES =		sysutils

HOMEPAGE =		https://acadix.biz/auto-admin.php

# 2BSD
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
