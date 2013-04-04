# $OpenBSD$

COMMENT =	KDE mobipocket plugins for Strigi, Okular and thumbnails
DISTNAME =	kdegraphics-mobipocket-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/okularcore
WANTLIB += streamanalyzer streams

LIB_DEPENDS =	databases/strigi \
		x11/kde4/okular>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
