# $OpenBSD: Makefile,v 1.11 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, network
DISTNAME =	kdenetwork-${MODKDE4_VERSION}

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
SHARED_LIBS +=	krfbprivate		0.0 # 4.7
SHARED_LIBS +=	qgroupwise		0.0 # 4.10

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xdamage Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += kabc>=5 kcmutils kde3support kdeui kdnssd
WANTLIB += kemoticons kfile khtml kidletime kio kjs knewstuff2
WANTLIB += knotifyconfig konq kparts kpimidentities kprintutils
WANTLIB += kresources ktexteditor ktorrent kutils kworkspace
WANTLIB += nepomuk nepomukutils plasma phonon_s qca2 qgpgme
WANTLIB += qimageblitz solid soprano
WANTLIB += gadu glib-2.0 gpg-error gpgme++-pthread gpgme-pthread idn
WANTLIB += assuan jasper jpeg meanwhile mms otr xml2 xmms xslt

MODULES =	devel/gettext

MODKDE4_USE =	pim workspace

RUN_DEPENDS =	security/qca-ossl

LIB_DEPENDS =	audio/xmms \
		graphics/qimageblitz \
		multimedia/libmms \
		net/libgadu \
		net/libktorrent \
		net/meanwhile \
		security/libotr \
		security/qca2 \
		x11/kde4/baseapps>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2:Bool=Yes \
			-DWITH_LibVNCServer:Bool=No \
			-DWITH_Libmsn:Bool=No \
			-DWITH_LiboRTP:Bool=No \
			-DWITH_Mediastreamer:Bool=No \
			-DWITH_TelepathyQt4:Bool=No

.include <bsd.port.mk>
