COMMENT =	Portable tools for automating systems management

GH_ACCOUNT =	outpaddling
GH_PROJECT =	auto-admin
GH_COMMIT =	eabf79d47573686421f887697f23507488779a57

DISTNAME =	auto-admin-0.7.18.38

CATEGORIES =	sysutils

PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
