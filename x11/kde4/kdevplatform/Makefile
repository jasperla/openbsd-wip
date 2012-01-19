# $OpenBSD$

COMMENT =	IDE creation toolkit for KDE
VERSION =	1.2.3
REVISION =	2
DISTNAME =	kdevplatform-${VERSION}

SHARED_LIBS =	kdevplatformdebugger		0.0 # 3.0
SHARED_LIBS +=	kdevplatformdocumentation	0.0 # 3.0
SHARED_LIBS +=	kdevplatforminterfaces		0.0 # 3.0
SHARED_LIBS +=	kdevplatformlanguage		0.0 # 3.0
SHARED_LIBS +=	kdevplatformoutputview		0.0 # 3.0
SHARED_LIBS +=	kdevplatformproject		0.0 # 3.0
SHARED_LIBS +=	kdevplatformshell		0.0 # 3.0
SHARED_LIBS +=	kdevplatformtests		0.0 # 3.0
SHARED_LIBS +=	kdevplatformutil		0.0 # 3.0
SHARED_LIBS +=	kdevplatformvcs			0.0 # 3.0
SHARED_LIBS +=	sublime				0.0 # 3.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/4.2.3/src/}

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kcmutils kde3support kdeui kfile kio knewstuff3
WANTLIB += knotifyconfig kparts krosscore ktexteditor nepomuk
WANTLIB += nepomukutils soprano threadweaver
WANTLIB += qjson 

# Disable Subversion plugin until KDE bug #283980 get fixed
#WANTLIB += apr-1 aprutil-1 svn_client-1 svn_fs-1 svn_ra-1
#WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1
#LIB_DEPENDS = 	devel/apr \
#		devel/apr-util \
#		devel/qjson \
#		devel/subversion
CONFIGURE_ARGS =	-DWITH_SubversionLibrary:BOOL=No

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/qjson

.include <bsd.port.mk>
