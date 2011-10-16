# $OpenBSD: Makefile,v 1.11 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, network
DISTNAME =	kdenetwork-${MODKDE_VERSION}

SHARED_LIBS =	kgetcore		0.0 # 4.0
SHARED_LIBS +=	kopete			3.0 # 4.0
SHARED_LIBS +=	kopete_videodevice	2.0 # 4.0
SHARED_LIBS +=	kopeteaddaccountwizar	0.0 # 1.0
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
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xss Xdamage Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += kabc>=5 kcmutils kde3support kdecore>=8 kdeui kdnssd 
WANTLIB += gadu glib-2.0 gpg-error gpgme++-pthread gpgme-pthread idn
WANTLIB += kemoticons kfile khtml kidletime kio kjs knewstuff2
WANTLIB += knotifyconfig konq kparts kpimidentities kprintutils
WANTLIB += kresources krosscore krossui ktexteditor kutils meanwhile
WANTLIB += nepomuk nepomukutils phonon>=5 plasma qca>=3 qgpgme
WANTLIB += qimageblitz solid soprano
WANTLIB += assuan jasper jpeg otr raptor2 xml2 xmms xslt

MODULES =	devel/gettext

MODKDE4_USE =	pim

RUN_DEPENDS =	security/qca-ossl

LIB_DEPENDS =	audio/xmms \
		net/libgadu \
		net/meanwhile \
		security/libotr \
		security/qca2 \
		x11/kde4/baseapps \
		x11/kde4/workspace \
		x11/kde4/qimageblitz

CONFIGURE_ARGS =	-DQCA2_INCLUDE_DIR:PATH=${LOCALBASE}/include/QtCrypto \
			-DQCA2_DEFINITIONS:STRING=-DQT_SHARED \
			-DQCA2_LIBRARIES:FILEPATH=${LOCALBASE}/lib/libqca.so.3.0 \
			-DQCA2_FOUND:BOOL=true

.include <bsd.port.mk>
