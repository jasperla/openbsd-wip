# $OpenBSD$

COMMENT =	link Akonadi to Google services
VERSION =	0.4.0
DISTNAME =	libkgapi-${VERSION}

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/libkgapi/${VERSION}/src/}

SHARED_LIBS =   kgapi                     0.0 # 0.4

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kabc kcalcore kdeui kdewebkit kio kmime kparts kresources
WANTLIB += nepomuk nepomukutils qjson soprano

MODKDE4_USE =	libs pim

LIB_DEPENDS =	devel/qjson

.include <bsd.port.mk>
