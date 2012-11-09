# $OpenBSD$

COMMENT =	music collection manager and player for KDE
DISTNAME =	juk-${MODKDE_VERSION}
REVISION =	0

CATEGORIES =	audio

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kde3support kdeui khtml kio kjs kparts nepomuk nepomukutils
WANTLIB += phonon_s soprano
WANTLIB += tag

LIB_DEPENDS =	audio/taglib

# Not ported yet
CONFIGURE_ARGS =	-DWITH_TunePimp:Bool=No

.include <bsd.port.mk>
