COMMENT =	mg(1)'s fork modified to add UTF-8 support

DISTNAME =	umg-20180713

GH_ACCOUNT =	hboetes
GH_PROJECT =	mg
GH_COMMIT =	124b1a9d860f71a70bf2d8afa742ec1b7b429cbf

CATEGORIES =	editors

HOMEPAGE =	https://github.com/hboetes/mg/tree/display-wide-characters

MAINTAINER =		Leonid Bobrov <mazocomp@disroot.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

#uses pledge()

WANTLIB =		c curses util

NO_TEST =		Yes

do-install:
	mv ${WRKBUILD}/{,u}mg
	mv ${WRKBUILD}/{,u}mg.1
	${INSTALL_PROGRAM} ${WRKBUILD}/umg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/umg.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
