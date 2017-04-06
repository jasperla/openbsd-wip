# $OpenBSD$

# Qt4's Webkit
USE_WXNEEDED =		Yes

COMMENT =		feature-rich dictionary lookup program
DISTNAME =		goldendict-1.0.1-src
PKGNAME = 		${DISTNAME:S/-src//}
CATEGORIES =		textproc

HOMEPAGE =		http://www.goldendict.org/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=   	${MASTER_SITE_SOURCEFORGE:=goldendict/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB =  ICE SM X11 Xext Xi Xinerama Xrender Xtst fontconfig freetype
WANTLIB += QtDBus QtGui QtNetwork QtWebKit QtXml phonon
WANTLIB += c iconv m ogg pthread stdc++ vorbis vorbisfile z
WANTLIB += hunspell-1.3

MODULES =		x11/qt4 devel/qmake

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		textproc/hunspell

WRKDIST =		${WRKDIR}
SEPARATE_BUILD =	No

MODQMAKE_ARGS =		INCLUDEPATH+=${X11BASE}/include \
			LIBS+=-L${LOCALBASE}/lib

ICONDIR =		${TRUEPREFIX}/share/goldendict

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/goldendict ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${WRKINST}${ICONDIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKDIST}/redist/icons/goldendict.png \
	    ${WRKINST}${ICONDIR}
	sed -e 's,^Icon=.*,Icon=${ICONDIR}/goldendict.png,' \
	    -e 's,^Exec=.*,Exec=${TRUEPREFIX}/bin/goldendict,' \
	    <${WRKSRC}/redist/goldendict.desktop \
	    >${PREFIX}/share/applications/goldendict.desktop

.include <bsd.port.mk>
