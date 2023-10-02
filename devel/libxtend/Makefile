COMMENT =	Miscellaneous functions to extend libc

GH_ACCOUNT =	outpaddling
GH_PROJECT =	libxtend
GH_COMMIT =	eb78857fb79e3c077a05171c7857a8eff109fe13

DISTNAME =	libxtend-0.1.9.34

CATEGORIES =	devel

SHARED_LIBS +=	xtend 2.0

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
