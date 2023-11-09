COMMENT =	Terminal Windows Tool Kit

GH_ACCOUNT =	outpaddling
GH_PROJECT =	twintk
GH_COMMIT =	da7813f93c7ba9c750490860d077f1ccad0e19dd

DISTNAME =	twintk-0.9.4.31

CATEGORIES =	devel

PERMIT_PACKAGE =	Yes

USE_GMAKE = 		Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
