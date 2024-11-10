COMMENT =	Terminal Windows Tool Kit

V =		0.9.4.33
GH_ACCOUNT =	outpaddling
GH_PROJECT =	twintk
GH_COMMIT =	881fedc388f2e7ac250d426a6b1c05548139efe4

DISTNAME =	twintk-$V

CATEGORIES =	devel

PERMIT_PACKAGE =	Yes

USE_GMAKE = 		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
