# $OpenBSD: Makefile,v 1.14 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, workspace
DISTNAME =	kde-workspace-${MODKDE_VERSION}

SHARED_LIBS =   kdecorations              0.0 # 4.7
SHARED_LIBS +=  kephal                    0.0 # 4.7
SHARED_LIBS +=  kfontinst                 0.0 # 4.7
SHARED_LIBS +=  kfontinstui               0.0 # 4.7
SHARED_LIBS +=  khotkeysprivate           0.0 # 4.7
SHARED_LIBS +=  kscreensaver              0.0 # 5.0
SHARED_LIBS +=  ksgrd                     0.0 # 4.7
SHARED_LIBS +=  ksignalplotter            0.0 # 4.7
SHARED_LIBS +=  kwineffects               0.0 # 1.0
SHARED_LIBS +=  kwinnvidiahack            0.0 # 4.7
SHARED_LIBS +=  kworkspace                0.0 # 4.7
SHARED_LIBS +=  lsofui                    0.0 # 4.7
SHARED_LIBS +=  oxygenstyle               0.0 # 4.7
SHARED_LIBS +=  plasma-geolocation-interface 0.0 # 4.7
SHARED_LIBS +=  plasma_applet-system-monitor 0.0 # 4.7
SHARED_LIBS +=  plasmaclock               0.0 # 4.7
SHARED_LIBS +=  plasmagenericshell        0.0 # 4.7
SHARED_LIBS +=  powerdevilcore            0.0 # 0.1
SHARED_LIBS +=  processcore               0.0 # 4.7
SHARED_LIBS +=  processui                 0.0 # 4.7
SHARED_LIBS +=  solidcontrol              0.0 # 4.7
SHARED_LIBS +=  solidcontrolifaces        0.0 # 4.7
SHARED_LIBS +=  taskmanager               0.0 # 4.7
SHARED_LIBS +=  weather_ion               0.0 # 6.0

WANTLIB =  c m pthread stdc++ util z
WANTLIB += GL GLU ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xinerama Xpm Xrandr Xrender Xss Xtst Xxf86misc
WANTLIB += fontconfig freetype xkbfile

WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtTest
WANTLIB += lib/qt4/QtXml lib/qt4/QtWebKit

WANTLIB += akonadi-kcal akonadi-kde akonadi-kmime kabc kactivities
WANTLIB += kcalcore kcalutils kcmutils kdeclarative kdefakes kde3support
WANTLIB += kdesu kdewebkit kdeui kfile kholidays khtml
WANTLIB += kidletime kio kjs kmime knewstuff3 knotifyconfig kparts
WANTLIB += kpimutils kpty kresources krosscore ktexteditor
WANTLIB += kunitconversion microblog nepomuk nepomukquery nepomukutils
WANTLIB += phonon>=6 plasma qimageblitz solid soprano streamanalyzer
WANTLIB += strigiqtdbusclient threadweaver syndication

WANTLIB += ck-connector dbus-1 dbusmenu-qt gps jpeg png usb xmms

MODKDE4_USE =	pim

# Uses a static library, no .so provided
BUILD_DEPENDS =	misc/shared-desktop-ontologies \
		sysutils/pciutils

RUN_DEPENDS =	misc/shared-desktop-ontologies \
		x11/polkit-qt4

LIB_DEPENDS =	audio/xmms \
		databases/soprano \
		devel/libusb \
		math/libqalculate \
		misc/google-gadgets \
		misc/gpsd \
		multimedia/phonon \
		sysutils/consolekit \
		x11/dbusmenu-qt \
		x11/kde4/akonadi \
		x11/kde4/pykde4 \
		x11/kde4/qimageblitz

CONFIGURE_ARGS =	-DWITH_Sensors:Bool=False \
			-DWITH_NetworkManager:Bool=False \
			-DWITH_RAW1394:Bool=False

.include <bsd.port.mk>
