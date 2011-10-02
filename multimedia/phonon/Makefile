# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:15 espie Exp $

COMMENT =	multimedia layer from qt4/kde4
CATEGORIES =	multimedia devel
VERSION =	4.5.0
DISTNAME =	phonon-${VERSION}
REVISION =	0

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

# BUILD_DEPENDS +=	audio/pulseaudio

LIB_DEPENDS +=	x11/vlc

WANTLIB +=  lib/qt4/QtDBus lib/qt4/QtGui m stdc++

FLAVORS =	debug
FLAVOR ?=

SEPARATE_BUILD =	flavored

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif

CONFIGURE_ARGS +=	-DUSE_PULSEAUDIO:Bool=No

.include <bsd.port.mk>
