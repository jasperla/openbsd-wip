COMMENT =	Another Programmer's Editor

GH_ACCOUNT =	outpaddling
GH_PROJECT =	APE
GH_COMMIT =	1cec9f4daff74273d8b3bddc58cff6fee8d1f82d

DISTNAME =	ape-3.5.3.146

CATEGORIES =	editors

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
