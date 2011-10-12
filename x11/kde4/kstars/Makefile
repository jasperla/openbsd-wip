# $OpenBSD$

COMMENT =	planetarium for KDE
DISTNAME =	kstars-${MODKDE_VERSION}

LIB_DEPENDS += 	math/cfitsio \
		math/eigen2 \
		x11/kde4/libs \
		x11/xplanet

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/kde4/runtime

WANTLIB += c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio knewstuff3
WANTLIB += cfitsio

.include <bsd.port.mk>
