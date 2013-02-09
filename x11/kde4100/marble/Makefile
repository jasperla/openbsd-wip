# $OpenBSD$

COMMENT =	K Desktop Environment, maps
DISTNAME =	marble-${MODKDE_VERSION}

SHARED_LIBS =	marblewidget		0.0 # 0.12

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3 kparts nepomuk
WANTLIB += nepomukutils plasma soprano
WANTLIB += gps shp

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info

LIB_DEPENDS = 	devel/shapelib \
		misc/gpsd,-main

PATCHORIG =	.ports.orig

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QextSerialPort:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtLocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_liblocation:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_libwlocate:Bool=TRUE \
			-DEXPERIMENTAL_PYTHON_BINDINGS:Bool=FALSE

.include <bsd.port.mk>
