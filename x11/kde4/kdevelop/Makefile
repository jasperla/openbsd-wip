# $OpenBSD$

COMMENT =	KDE development enviornment
VERSION =	4.2.3
DISTNAME =	kdevelop-${VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${VERSION}/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3 kparts krosscore
WANTLIB += krossui ktexteditor nepomuk nepomukutils plasma 
WANTLIB += soprano

BUILD_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS = 	x11/kde4/kdevplatform \
		x11/kde4/sdk \
		x11/kde4/workspace

.include <bsd.port.mk>
