# $OpenBSD$

COMMENT =		feature-rich dictionary lookup program

DISTNAME =		goldendict-1.0.1-src
PKGNAME = 		${DISTNAME:S/-src//}

CATEGORIES =		textproc

HOMEPAGE =		http://www.goldendict.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

#MASTER_SITES =		${MASTER_SITE_BERLIOS:=goldendict/}
MASTER_SITES=   	${MASTER_SITE_SOURCEFORGE:=goldendict/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += lib/qt4/phonon X11 Xtst c 
WANTLIB += iconv m ogg pthread sqlite3 stdc++ vorbis vorbisfile z

MODULES =		x11/qt4
LIB_DEPENDS =		textproc/hunspell \
			${MODQT4_LIB_DEPENDS}
RUN_DEPENDS = 		devel/desktop-file-utils

USE_X11 =		Yes

#WRKDIST =		${WRKDIR}/${DISTNAME:S/-x11//}
WRKSRC =		${WRKDIR}
WRKDIST =		${WRKDIR}

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
