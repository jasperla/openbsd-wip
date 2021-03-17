# $OpenBSD$

COMMENT =	x86 and amd64 instruction reference manual pages

GH_COMMIT =	d35f9cdb2655b10cc62fb3edec63fb0879dfb606
GH_ACCOUNT =	ttmo-O
GH_PROJECT =	x86-manpages
DISTNAME =	x86-manpages-0.1

CATEGORIES =	books

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# XXX: No license or redistribution rights?
PERMIT_PACKAGE = No

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/manpages/*.7 ${PREFIX}/man/man7/

.include <bsd.port.mk>
