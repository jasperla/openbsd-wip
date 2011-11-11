# $OpenBSD$

COMMENT =	KDE development enviornment
VERSION =	4.2.3
DISTNAME =	kdevelop-${VERSION}
REVISION =	3

SHARED_LIBS +=	kdev4cmakecommon	0.0
SHARED_LIBS +=	kdev4cppduchain		0.0
SHARED_LIBS +=	kdev4cppparser		0.0
SHARED_LIBS +=	kdev4cpprpp		0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${VERSION}/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDesigner lib/qt4/QtGui
WANTLIB += lib/qt4/QtHelp lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kastencontrollers kastencore kastengui kcmutils kdeui
WANTLIB += kdevplatformdebugger kdevplatformdocumentation
WANTLIB += kdevplatforminterfaces kdevplatformlanguage
WANTLIB += kdevplatformoutputview kdevplatformproject kdevplatformshell
WANTLIB += kdevplatformutil kdevplatformvcs kemoticons kidletime kio
WANTLIB += knotifyconfig kparts kprintutils ktexteditor kutils nepomuk
WANTLIB += nepomukutils oktetacore oktetagui oktetakastencontrollers
WANTLIB += oktetakastencore oktetakastengui processcore processui
WANTLIB += soprano sublime threadweaver

MODKDE4_USE =	workspace

# Uses files with "{...}" in names
USE_GMAKE =	Yes

BUILD_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS = 	x11/kde4/kdevplatform \
		x11/kde4/sdk \

.include <bsd.port.mk>
