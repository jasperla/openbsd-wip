# $OpenBSD: Makefile,v 1.14 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, workspace
DISTNAME =		kde-workspace-${VERSION}

SHARED_LIBS +=  kdecorations              0.0 # 4.7
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

USE_GROFF =	Yes
BUILD_DEPENDS +=	x11/kde4/automoc
LIB_DEPENDS +=		x11/kde4/libs \
			x11/kde4/pimlibs \
			multimedia/phonon \
			x11/kde4/qimageblitz \
			sysutils/consolekit \
			sysutils/pciutils \
			misc/gpsd,-main \
			audio/xmms,-main \
			devel/libusb \

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm Xrender c \
	kde3support kdecore>=8 kdesu kdeui kfile khtml kio kjs knewstuff3 \
	knotifyconfig kparts kpty ktexteditor lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk nepomukquery phonon>=6 plasma pthread \
	qimageblitz solid soprano stdc++ z
WANTLIB += QtDeclarative QtOpenGL QtScript QtSql QtTest QtWebKit
WANTLIB += Xcomposite Xcursor Xdamage Xfixes Xinerama Xrandr Xss
WANTLIB += Xtst Xxf86misc ck-connector dbus-1 dbusmenu-qt fontconfig
WANTLIB += freetype gps jpeg kactivities kcmutils kdeclarative
WANTLIB += kdefakes kdewebkit kidletime krosscore kunitconversion
WANTLIB += nepomukutils png streamanalyzer strigiqtdbusclient
WANTLIB += threadweaver util xkbfile
WANTLIB += akonadi-kcal akonadi-kde akonadi-kmime kabc kcalcore
WANTLIB += kcalutils kholidays kmime kpimutils kresources microblog
WANTLIB += syndication usb xmms

# these come from libs in real case
#pre-install:
#	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
