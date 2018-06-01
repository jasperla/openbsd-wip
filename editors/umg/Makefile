COMMENT =	mg(1)'s fork modified to add UTF-8 support

DISTNAME =	umg-20180530

GH_ACCOUNT =	hboetes
GH_PROJECT =	mg
GH_COMMIT =	9487105ac4c70959e04612dc855ce1e5615298a5

CATEGORIES =	editors

HOMEPAGE =	https://github.com/hboetes/mg/tree/display-wide-characters

MAINTAINER =		Leonid Bobrov <mazocomp@disroot.org>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

#uses pledge()

WANTLIB =		c curses util

NO_TEST =		Yes

do-install:
	sed -i "s/share/local\/share/" ${WRKBUILD}/mg.1
	mv ${WRKBUILD}/{,u}mg
	mv ${WRKBUILD}/{,u}mg.1
	${INSTALL_PROGRAM} ${WRKBUILD}/umg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/umg.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mg
	${INSTALL_DATA} ${WRKBUILD}/tutorial ${PREFIX}/share/doc/mg

.include <bsd.port.mk>
