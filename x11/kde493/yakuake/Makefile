# $OpenBSD$

COMMENT =	K Desktop Environment, quake-style terminal emulator
HOMEPAGE =	http://yakuake.kde.org/
DISTNAME =	yakuake-${YAKUAKE_VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/yakuake/${YAKUAKE_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

WANTLIB =  c m pthread stdc++ X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml kdeui kio knewstuff3 knotifyconfig kparts nepomuk
WANTLIB += nepomukutils soprano

RUN_DEPENDS =	x11/kde4/konsole

SUBST_VARS =	PKGNAME

.include <bsd.port.mk>
