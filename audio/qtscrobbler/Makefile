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

WANTLIB += QtCore QtGui X11 Xext c crypto curl idn m mtp pthread ssl stdc++ usb z

MODLES = 		x11/qt4
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

.include <bsd.port.mk>
