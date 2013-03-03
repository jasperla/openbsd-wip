# $OpenBSD$

COMMENT =	interactive desktop widgets for KDE4
DISTNAME =	superkaramba-${MODKDE_VERSION}

SHARED_LIBS =	superkaramba	0.0 # 4.7

WANTLIB =  ICE lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext Xrender
WANTLIB += c kde3support kdeui kio knewstuff2 kpty krosscore m plasma pthread
WANTLIB += qimageblitz stdc++ util ${MODPY_WANTLIB}

MODULES =	lang/python

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	graphics/qimageblitz

.include <bsd.port.mk>
