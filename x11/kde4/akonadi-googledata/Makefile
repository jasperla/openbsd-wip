# $OpenBSD$

COMMENT =	Google contacts and calendar Akonadi resource
DISTNAME =	akonadi-googledata-1.2.0

MASTER_SITES =	http://libgcal.googlecode.com/files/

# SHARED_LIBS +=	ksane			0.0	# 0.2

LIB_DEPENDS += 		devel/libgcal \
			x11/kde4/libs \
			x11/kde4/pimlibs \

RUN_DEPENDS +=		devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg  lib/qt4/QtXml
WANTLIB += akonadi-kde kabc kcal kdecore kdeui kio kresources
WANTLIB += gcal

.include <bsd.port.mk>
