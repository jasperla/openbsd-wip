COMMENT =	mg(1)'s fork modified to add UTF-8 support

DISTNAME =	umg-20180601

GH_ACCOUNT =	hboetes
GH_PROJECT =	mg
GH_COMMIT =	cdf641e141acfc1786cf717a568bf1325f4e10ec

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
