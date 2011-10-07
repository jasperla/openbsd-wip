# $OpenBSD$

COMMENT =	LEMON LALR(1) parser generator

SQLITE_VER =	3.7.8.0
PKGNAME =	lemon-${SQLITE_VER}
DISTNAME =	sqlite-src-${SQLITE_VER:S/./0/g}
EXTRACT_SUFX =	.zip

CATEGORIES =	devel

HOMEPAGE =	http://www.sqlite.org/

# Public Domain
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES =		${HOMEPAGE}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
NO_REGRESS =		Yes
CFLAGS +=		-DSQLITE_HAVE_ISNAN
ALL_TARGET =		lemon

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lemon
	${INSTALL_DATA} ${WRKBUILD}/tool/lempar.c ${PREFIX}/share/lemon
	${INSTALL_PROGRAM} ${WRKBUILD}/lemon ${PREFIX}/bin

.include <bsd.port.mk>
