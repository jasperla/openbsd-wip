COMMENT =	Portable tools for automating systems management

GH_ACCOUNT =	outpaddling
GH_PROJECT =	auto-admin
GH_COMMIT =	37d709bf37ad8c0fa2449087d30113479b502583

DISTNAME =	auto-admin-0.7.18.39

CATEGORIES =	sysutils

PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
