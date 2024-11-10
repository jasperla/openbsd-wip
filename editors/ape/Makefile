COMMENT =	Another Programmer's Editor

V =		3.5.3.154
GH_ACCOUNT =	outpaddling
GH_PROJECT =	APE
GH_COMMIT =	83ae1f2d780baac2175ca3b55b3ca8df3ae02738

DISTNAME =	ape-$V

CATEGORIES =	editors

PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	devel/twintk devel/libpare
LIB_DEPENDS =	devel/libxtend

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
