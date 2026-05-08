COMMENT =	Miscellaneous functions to extend libc

V =		0.2.1.29
GH_ACCOUNT =	outpaddling
GH_PROJECT =	libxtend
GH_COMMIT =	1e653aa6156bb9a15fa5dc3e5204ffd10b66c8d6

DISTNAME =	libxtend-$V

CATEGORIES =	devel

SHARED_LIBS +=	xtend 2.0

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
