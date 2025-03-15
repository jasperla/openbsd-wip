COMMENT =		Portable tools for automating systems management

# Suffix version with commit # from git describe --tags
V =			0.8.1.19
COMMIT =		1ad42a8ec2102031883bedb791762b43ca5d719a
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