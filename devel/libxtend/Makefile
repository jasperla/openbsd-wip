COMMENT =	Miscellaneous functions to extend libc

V =		0.2.0.17
GH_ACCOUNT =	outpaddling
GH_PROJECT =	libxtend
GH_COMMIT =	7e8e7d3afd197c1cd2a6b957fc81f9ae3c6c54e1

DISTNAME =	libxtend-$V

CATEGORIES =	devel

SHARED_LIBS +=	xtend 2.0

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
