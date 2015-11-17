#

COMMENT =		Heretic Shareware data files

DISTNAME =		htic_v12
PKGNAME =		hereticdata-1.2
EXTRACT_SUFX =		.zip
CATEGORIES =		games

HOMEPAGE =		http://www.idsoftware.com/games/doom/doom-collectors/

MAINTAINER =		Roman Yakovlev <obsd@51t.ru>

PKG_ARCH =		*

PERMIT_PACKAGE_CDROM =	Shareware
PERMIT_PACKAGE_FTP =	Shareware

MASTER_SITES =		ftp://ftp.idsoftware.com/idstuff/heretic/

WRKSRC =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && cat HTIC_V12.[12] > HTIC_V12.ZIP
	cd ${WRKBUILD} && unzip HTIC_V12.ZIP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
	${INSTALL_DATA} ${WRKBUILD}/HERETIC1.WAD ${PREFIX}/share/doom/heretic1.wad

.include <bsd.port.mk>
