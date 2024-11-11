COMMENT =		Portable tools for automating systems management

# Suffix version with commit # from git describe --tags
V =			0.8.0.59
COMMIT =		c8b88ac7373ab8e4d09753ca4f2411845525c700
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
