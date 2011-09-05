# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:15 espie Exp $

COMMENT =	multimedia layer from qt4/kde4
CATEGORIES =	multimedia devel
VERSION =	4.5.0
DISTNAME =	phonon-${VERSION}
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/${VERSION}/src/}

# LGPL 2.1
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes

# higher than base kde4 to avoid issues

SHARED_LIBS +=		phonon 6.0
SHARED_LIBS +=		phononexperimental 1.0
BUILD_DEPENDS +=	x11/kde4/automoc

MODULES =		x11/qt4 devel/cmake

LIB_DEPENDS +=	x11/vlc

WANTLIB +=  lib/qt4/QtDBus lib/qt4/QtGui m stdc++

.include <bsd.port.mk>
