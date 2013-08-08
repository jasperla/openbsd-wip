# $OpenBSD$

CATEGORIES =	devel x11
COMMENT =	integrated development environment for KDE 4
V =		4.5.1
PLATFORM_V =	1.5.1
DISTNAME =	kdevelop-$V
HOMEPAGE =	http://www.kdevelop.org/

SHARED_LIBS =	kdev4cmakecommon	0.0
SHARED_LIBS +=	kdev4cppduchain		0.0
SHARED_LIBS +=	kdev4cppparser		0.0
SHARED_LIBS +=	kdev4cpprpp		0.0

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/$V/src/}
DIST_SUBDIR =	kde

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtHelp lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/ktexteditor ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/kasten2controllers ${KDE4LIB}/kasten2core
WANTLIB += ${KDE4LIB}/kasten2gui ${KDE4LIB}/kasten2okteta1controllers
WANTLIB += ${KDE4LIB}/kasten2okteta1core ${KDE4LIB}/kasten2okteta1gui
WANTLIB += ${KDE4LIB}/okteta1core ${KDE4LIB}/okteta1gui
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += kdevplatformdebugger kdevplatformdocumentation
WANTLIB += kdevplatforminterfaces kdevplatformlanguage
WANTLIB += kdevplatformoutputview kdevplatformproject kdevplatformshell
WANTLIB += kdevplatformutil kdevplatformvcs
WANTLIB += processcore processui soprano sublime

MODULES =	x11/kde4
MODKDE4_USE =	workspace

# Uses files with "{...}" in names
USE_GMAKE =	Yes

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/kate

LIB_DEPENDS = 	devel/kdevplatform>=${PLATFORM_V} \
		${MODKDE4_DEP_DIR}/sdk

.include <bsd.port.mk>
