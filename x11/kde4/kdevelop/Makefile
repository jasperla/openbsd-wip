# $OpenBSD$

COMMENT =	K Desktop Environment, integrated development environment
VERSION =	4.2.81
DISTNAME =	kdevelop-${VERSION}
HOMEPAGE =	http://www.kdevelop.org/
REVISION =	0

SHARED_LIBS =	kdev4cmakecommon	0.0
SHARED_LIBS +=	kdev4cppduchain		0.0
SHARED_LIBS +=	kdev4cppparser		0.0
SHARED_LIBS +=	kdev4cpprpp		0.0

MASTER_SITES =	${MASTER_SITE_KDE:=unstable/kdevelop/${VERSION}/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtHelp lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kcmutils kdeui
WANTLIB += kdevplatformdebugger kdevplatformdocumentation
WANTLIB += kdevplatforminterfaces kdevplatformlanguage
WANTLIB += kdevplatformoutputview kdevplatformproject kdevplatformshell
WANTLIB += kdevplatformutil kdevplatformvcs kemoticons kidletime kio
WANTLIB += knotifyconfig kparts kprintutils ktexteditor kutils nepomuk
WANTLIB += nepomukutils plasma
WANTLIB += processcore processui
WANTLIB += soprano sublime threadweaver
WANTLIB += kasten1controllers kasten1core kasten1gui
WANTLIB += kasten1okteta1controllers kasten1okteta1core
WANTLIB += kasten1okteta1gui okteta1core okteta1gui

MODKDE4_USE =	workspace

# Uses files with "{...}" in names
USE_GMAKE =	Yes

BUILD_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS = 	x11/kde4/kdevplatform>=${VERSION:C/^4/1/} \
		x11/kde4/sdk

.include <bsd.port.mk>
