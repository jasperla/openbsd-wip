# $OpenBSD: Makefile,v 1.11 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, network
DISTNAME =	kdenetwork-${MODKDE_VERSION}

SHARED_LIBS =	kgetcore		0.0 # 4.0
SHARED_LIBS +=	kopete			3.0 # 4.0
SHARED_LIBS +=	kopete_videodevice	2.0 # 4.0
SHARED_LIBS +=	kopeteaddaccountwizard	0.0 # 1.0
SHARED_LIBS +=	kopetechatwindow_shared	0.0 # 1.0
SHARED_LIBS +=	kopeteidentity		0.0 # 1.0
SHARED_LIBS +=	kopeteprivacy		0.0 # 1.0
SHARED_LIBS +=	kyahoo			0.0 # 1.0
SHARED_LIBS +=	oscar			0.0 # 1.0
SHARED_LIBS +=	kopete_oscar		0.0 # 4.4
SHARED_LIBS +=	kopete_otr_shared	0.0 # 1.0
SHARED_LIBS +=	kopetecontactlist	0.0 # 1.0
SHARED_LIBS +=	kopetestatusmenu	0.0 # 1.0
SHARED_LIBS +=	krdccore		0.0 # 4.4
SHARED_LIBS +=	krfbprivate		4.7 # 4.7

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xdamage Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += kabc>=5 kcmutils kde3support kdeui kdnssd 
WANTLIB += gadu glib-2.0 gpg-error gpgme++-pthread gpgme-pthread idn
WANTLIB += kemoticons kfile khtml kidletime kio kjs knewstuff2
WANTLIB += knotifyconfig konq kparts kpimidentities kprintutils
WANTLIB += kresources ktexteditor kutils meanwhile
WANTLIB += nepomuk nepomukutils plasma qca2 qgpgme
WANTLIB += qimageblitz solid soprano mms kworkspace
WANTLIB += assuan jasper jpeg otr xml2 xmms xslt ktorrent

MODULES =	devel/gettext multimedia/phonon

MODKDE4_USE =	pim workspace

RUN_DEPENDS =	security/qca-ossl

LIB_DEPENDS =	audio/xmms \
		multimedia/libmms \
		net/libgadu \
		net/meanwhile \
		security/libotr \
		security/qca2 \
		x11/kde4/baseapps \
		x11/kde4/libktorrent \
		x11/kde4/qimageblitz

.include <bsd.port.mk>
