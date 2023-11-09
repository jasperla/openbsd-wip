COMMENT =	Portable tools for automating systems management

GH_ACCOUNT =	outpaddling
GH_PROJECT =	auto-admin
GH_COMMIT =	1f18e15e2d67f775dc04158e04ca285ef8022857

DISTNAME =	auto-admin-0.7.18.21

CATEGORIES =	sysutils

PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
