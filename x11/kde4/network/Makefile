# $OpenBSD: Makefile,v 1.11 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, network
DISTNAME =	kdenetwork-${VERSION}

SHARED_LIBS +=  kgetcore                0.0 # .4.0
SHARED_LIBS +=  kopete                  3.0 # .4.0
SHARED_LIBS +=  kopete_videodevice      2.0 # .4.0
SHARED_LIBS +=  kopeteaddaccountwizard  0.0 # .1.0
SHARED_LIBS +=  kopetechatwindow_shared 0.0 # .1.0
SHARED_LIBS +=  kopeteidentity          0.0 # .1.0
SHARED_LIBS +=  kopeteprivacy           0.0 # .1.0
SHARED_LIBS +=  kyahoo                  0.0 # .1.0
SHARED_LIBS +=  oscar                   0.0 # .1.0
SHARED_LIBS +=	kopete_oscar		0.0 # .4.4
SHARED_LIBS +=	kopete_otr_shared	0.0 # .1.0
SHARED_LIBS +=	kopetecontactlist	0.0 # .1.0
SHARED_LIBS +=	kopetestatusmenu	0.0 # .1.0
SHARED_LIBS +=	krdccore		0.0 # .4.4
SHARED_LIBS +=	krfbprivate		4.7 # 4.7

MODULES =	devel/gettext

LIB_DEPENDS +=	x11/kde4/libs \
		x11/kde4/pimlibs \
		x11/kde4/qimageblitz \
		x11/kde4/workspace \
		x11/kde4/baseapps \
		audio/xmms \
		security/qca2 \
		net/libgadu \
		security/libotr \
		net/meanwhile

RUN_DEPENDS +=	security/qca-ossl

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xss c gadu glib-2.0 \
	gpg-error gpgme++-pthread gpgme-pthread idn kabc>=5 kdecore>=8 \
	kdeui kdnssd kfile khtml kio kjs knewstuff2 knotifyconfig \
	konq kparts kpimidentities kresources krosscore krossui \
	ktexteditor kutils lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql \
	lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml m meanwhile nepomuk otr \
	phonon>=5 plasma pthread qca>=3 qgpgme qimageblitz raptor2 solid \
	soprano stdc++ xml2 xmms xslt z
WANTLIB += Xdamage Xtst assuan jasper jpeg kcmutils kde3support
WANTLIB += kemoticons kidletime kprintutils nepomukutils phonon

CONFIGURE_ARGS += -DQCA2_INCLUDE_DIR:PATH=${LOCALBASE}/include/QtCrypto
CONFIGURE_ARGS += -DQCA2_DEFINITIONS:STRING=-DQT_SHARED
CONFIGURE_ARGS += -DQCA2_LIBRARIES:FILEPATH=${LOCALBASE}/lib/libqca.so.3.0
CONFIGURE_ARGS += -DQCA2_FOUND:BOOL=true

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
