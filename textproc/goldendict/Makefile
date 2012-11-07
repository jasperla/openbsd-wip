# $OpenBSD$

COMMENT =		feature-rich dictionary lookup program

DISTNAME =		goldendict-0.9.0-src-x11
PKGNAME = 		${DISTNAME:S/-src-x11//}

CATEGORIES =		textproc

HOMEPAGE =		http://www.goldendict.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#MASTER_SITES =		${MASTER_SITE_BERLIOS:=goldendict/}
MASTER_SITES=   	${MASTER_SITE_SOURCEFORGE:=goldendict/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += lib/qt4/phonon X11 Xtst c hunspell-1.2
WANTLIB += iconv m ogg pthread sqlite3 stdc++ vorbis vorbisfile z

MODULES =		x11/qt4
LIB_DEPENDS =		textproc/hunspell \
			${MODQT4_LIB_DEPENDS}
RUN_DEPENDS = 		devel/desktop-file-utils

USE_X11 =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-x11//}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4 \
		-unix INCLUDEPATH+=${X11BASE}/include \
		LIBS+=-L${LOCALBASE}/lib ${MAKE_FLAGS} goldendict.pro
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/goldendict ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/redist/icons/goldendict.png ${PREFIX}/share/icons/
	${INSTALL_DATA} ${WRKSRC}/redist/goldendict.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
