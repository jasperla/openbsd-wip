# $OpenBSD: Makefile,v 1.11 2011/07/06 21:25:23 ajacoutot Exp $

COMMENT =	K Desktop Environment, extra plasmoids
DISTNAME =	kdeplasma-addons-${MODKDE_VERSION}
REVISION =	1

SHARED_LIBS =	lancelot-datamodels		0.0 # 1.7
SHARED_LIBS +=	lancelot			0.0 # 1.9
SHARED_LIBS +=	kimpanelruntime			0.0 # 1.9
SHARED_LIBS +=	plasma_groupingcontainment	0.0 # 4.7
SHARED_LIBS +=	plasmacomicprovidercore		0.0 # 1.0
SHARED_LIBS +=	plasmapotdprovidercore		0.0 # 1.0
SHARED_LIBS +=	plasmaweather			0.0 # 4.7
SHARED_LIBS +=	rtm				0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtSql qwt
WANTLIB += akonadi-contact akonadi-kde attica kabc kcalcore kcmutils
WANTLIB += kdeui kdewebkit kexiv2 kio kfile kmime knewstuff2
WANTLIB += knewstuff3 kparts kpimutils kresources krosscore
WANTLIB += kunitconversion kworkspace marblewidget nepomuk nepomukutils
WANTLIB += phonon plasma plasmaclock qca qimageblitz solid solidcontrol
WANTLIB += soprano taskmanager threadweaver weather_ion
WANTLIB += cln glib-2.0 qalculate scim-1.0 xml2

MODULES =	devel/gettext

MODKDE4_USE =	pim

LIB_DEPENDS =	eigen2->=2.0.3:math/eigen2 \
		inputmethods/scim \
		math/qalculate/libqalculate \
		security/qca2 \
		x11/kde4/attica \
		x11/kde4/libkexiv2 \
		x11/kde4/marble \
		x11/kde4/qimageblitz \
		x11/kde4/workspace \
		x11/qwt

.include <bsd.port.mk>
