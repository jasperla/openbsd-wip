# $OpenBSD$

COMMENT =	K Desktop Environment, interactive desktop widget creation
DISTNAME =	superkaramba-${MODKDE_VERSION}


SHARED_LIBS =	superkaramba	0.0 # 4.7

WANTLIB =  ICE lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext Xrender
WANTLIB += c kde3support kdeui kio knewstuff2 kpty krosscore m plasma pthread
WANTLIB += qimageblitz stdc++ util ${MODPY_WANTLIB}

MODULES =	lang/python

LIB_DEPENDS =	x11/kde4/qimageblitz

.include <bsd.port.mk>
