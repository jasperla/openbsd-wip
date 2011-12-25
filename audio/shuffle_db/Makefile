# $OpenBSD$

COMMENT =	rebuild iTunes DB for Apple iPod	

DISTNAME =	rebuild_db-1.0-rc1
PKGNAME =	${DISTNAME}
CATEGORIES =	productivity audio

HOMEPAGE =	http://shuffle-db.sourceforge.net

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	 ${MASTER_SITE_SOURCEFORGE:=shuffle-db/}

NO_BUILD = Yes
MODULES =		lang/python

NO_REGRESS =		Yes

do-install:
	${INSTALL_DATA} ${WRKDIR}/rebuild_db/rebuild_db.py ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rebuild_db
	${INSTALL_DATA} ${WRKDIR}/rebuild_db/Readme.txt ${PREFIX}/share/doc/rebuild_db/
	${INSTALL_DATA} ${WRKDIR}/rebuild_db/License.txt ${PREFIX}/share/doc/rebuild_db/

post-install:
	chmod +x ${PREFIX}/bin/rebuild_db.py

.include <bsd.port.mk>
