# $OpenBSD$

COMMENT =	K Desktop Environment, IDE creation toolkit
VERSION =	1.3.1
DISTNAME =	kdevplatform-${VERSION}
HOMEPAGE =	http://www.kdevelop.org/
REVISION =	0

EXTRACT_SUFX =	.tar.bz2

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

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${VERSION:C/^1/4/}/src/}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtTest
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kcmutils kdeui kfile kio knewstuff3
WANTLIB += knotifyconfig kparts krosscore ktexteditor nepomuk
WANTLIB += nepomukutils plasma soprano threadweaver
WANTLIB += qjson 

# Disable Subversion plugin until KDE bug #283980 get fixed
WANTLIB += apr-1 aprutil-1 svn_client-1 svn_fs-1 svn_ra-1
WANTLIB += svn_repos-1 svn_subr-1 svn_wc-1
LIB_DEPENDS = 	devel/apr \
		devel/apr-util \
		devel/qjson \
		devel/subversion
#CONFIGURE_ARGS =	-DWITH_SubversionLibrary:BOOL=No

BUILD_DEPENDS =	devel/boost

.include <bsd.port.mk>
