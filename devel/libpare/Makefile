COMMENT =	Pointer Array Regular Expressions

GH_ACCOUNT =	outpaddling
GH_PROJECT =	libpare
GH_COMMIT =	ab3da2eb8492f960ceb8832a4959a23f4f97e556

DISTNAME =	libpare-1.1.1.12

CATEGORIES =	devel

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
