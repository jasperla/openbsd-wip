COMMENT =	Another Programmer's Editor

V =		3.5.3.191
GH_ACCOUNT =	outpaddling
GH_PROJECT =	APE
GH_COMMIT =	a4b69b9a8e565ed56f8a3aa22544bde74215aba2

DISTNAME =	ape-$V

CATEGORIES =	editors

PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	devel/libpare
LIB_DEPENDS =	devel/libxtend devel/twintk

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
