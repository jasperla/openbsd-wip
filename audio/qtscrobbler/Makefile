# $OpenBSD$

COMMENT = 		simple tool for submitting .scrobbler.log to last.fm

DISTNAME = 		qtscrob-0.10

CATEGORIES = 		audio

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=qtscrob/}
EXTRACT_SUFX = 		.tar.bz2

HOMEPAGE = 		http://qtscrob.sourceforge.net/

MAINTAINER = 		dukzcry <lomka@gero.in>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes 

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c crypto
WANTLIB += curl fontconfig freetype idn m mtp pthread ssl stdc++
WANTLIB += usb z

MODULES = 		x11/qt4
BUILD_DEPENDS = 	devel/ccache
LIB_DEPENDS = 		net/curl \
			devel/libidn \
			devel/libmtp
RUN_DEPENDS = 		devel/desktop-file-utils
USE_GMAKE = 		Yes
WRKSRC = 		${WRKDIST}/src/cli

NO_REGRESS = 		Yes

post-build:
	cd ${WRKDIST}/src/qt && qmake4 && gmake

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scrobble-cli ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/scrobble-cli.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKDIST}/src/qt/qtscrob ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKDIST}/src/qt/qtscrob.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/src/qt/resources/icons/qtscrob.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
