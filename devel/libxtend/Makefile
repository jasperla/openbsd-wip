COMMENT =	Miscellaneous functions to extend libc

GH_ACCOUNT =	outpaddling
GH_PROJECT =	libxtend
GH_COMMIT =	af688633f10ef5c5ec4995d086db76ef9801303e

DISTNAME =	libxtend-0.1.9.35

CATEGORIES =	devel

SHARED_LIBS +=	xtend 2.0

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
