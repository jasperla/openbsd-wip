# $OpenBSD$

CATEGORIES =	devel
COMMENT =	IDE creation toolkit for KDE 4
V =		1.5.1
DISTNAME =	kdevplatform-$V
REVISION =	0
HOMEPAGE =	http://www.kdevelop.org/

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	kdevplatformdebugger		0.0 # 3.0
SHARED_LIBS +=	kdevplatformdocumentation	0.0 # 3.0
SHARED_LIBS +=	kdevplatforminterfaces		0.0 # 3.0
SHARED_LIBS +=	kdevplatformjsontests		0.0 # 7.0
SHARED_LIBS +=	kdevplatformlanguage		0.0 # 3.0
SHARED_LIBS +=	kdevplatformoutputview		0.0 # 3.0
SHARED_LIBS +=	kdevplatformproject		0.0 # 3.0
SHARED_LIBS +=	kdevplatformshell		0.0 # 3.0
SHARED_LIBS +=	kdevplatformtests		0.0 # 3.0
SHARED_LIBS +=	kdevplatformutil		0.0 # 3.0
SHARED_LIBS +=	kdevplatformvcs			0.0 # 3.0
SHARED_LIBS +=	sublime				0.0 # 3.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${V:C/^./4/}/src/}
DIST_SUBDIR =	kde

# LGPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtTest
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/krosscore ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kutils
WANTLIB += apr-1 aprutil-1 qjson soprano svn_client-1 svn_fs-1 svn_ra-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1
WANTLIB += grantlee_core

MODULES =	devel/gettext x11/kde4

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS = 	devel/apr \
		devel/apr-util \
		devel/qjson \
		devel/subversion

.include <bsd.port.mk>
