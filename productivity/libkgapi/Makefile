# $OpenBSD$

CATEGORIES =	productivity
COMMENT =	link Akonadi to Google services
V =		0.4.0
DISTNAME =	libkgapi-$V
REVISION =	3

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/libkgapi/$V/src/}

SHARED_LIBS =   kgapi                     0.0 # 0.4

# GPLv2+
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kabc kcalcore kdeui kdewebkit kio kmime kparts kresources
WANTLIB += nepomuk nepomukutils qjson soprano

MODULES =	x11/kde4
MODKDE4_USE =	libs pim

LIB_DEPENDS =	devel/qjson

.include <bsd.port.mk>
