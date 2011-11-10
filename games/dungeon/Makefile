# $OpenBSD$

COMMENT =		text adventure game

DISTNAME =		dungeon-2.7s

CATEGORIES =		games

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Commercial use prohibited.
PERMIT_PACKAGE_CDROM =	no commercial use
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =no commercial use
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c termcap

MASTER_SITES =		ftp://ftp.ifarchive.org/if-archive/games/source/ \
			http://mirror.ifarchive.org/if-archive/games/source/ \
			ftp://ftp.funet.fi/pub/misc/if-archive/games/source/ \
			http://www.vaxdungeon.com/vax-dungeon/Archive/dungeon/ \
			http://ifarchive.flavorplex.com/if-archive/games/source/
DISTFILES =		dungn27s.zip

BUILD_DEPENDS =		archivers/unzip

ALL_TARGET =		dungeon

do-extract:
	mkdir -p ${WRKSRC}
	unzip ${DISTDIR}/${DISTFILES} -d ${WRKSRC}
	(cd ${WRKSRC}; for _f in *; do mv $${_f} `echo $${_f} | \
		tr A-Z a-z`; done)
	mv ${WRKSRC}/makefile ${WRKSRC}/Makefile
	mv ${WRKSRC}/history ${WRKSRC}/History
	mv ${WRKSRC}/readme ${WRKSRC}/README
	mv ${WRKSRC}/manifest ${WRKSRC}/MANIFEST
	perl -pi -e 's/\015//g' ${WRKSRC}/*
	perl -pi -e 's/\032//g' ${WRKSRC}/*

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dungeon
	
post-install:
	${INSTALL_MAN} ${WRKSRC}/dungeon.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dungeon
.	for _f in History MANIFEST README
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/dungeon
.	endfor

.include <bsd.port.mk>
