# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:15 espie Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel x11/kde4
VERSION =	4.5.1
REVISION =	0
DISTNAME =	phonon-${VERSION}

# Higher than one in Qt4 to avoid issues
SHARED_LIBS +=	phonon			6.0
SHARED_LIBS +=	phononexperimental	1.0

FLAVORS =	debug
FLAVOR ?=

# LGPL v2.1
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =	.tar.xz
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/${VERSION}/src/}

MODULES =	devel/cmake \
		x11/qt4

WANTLIB =	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtTest lib/qt4/QtXml
WANTLIB +=	glib-2.0 m qzeitgeist stdc++ pulse pulse-mainloop-glib

BUILD_DEPENDS =	x11/kde4/automoc

LIB_DEPENDS =	productivity/qzeitgeist>=0.7.0 \
		audio/pulseaudio

SEPARATE_BUILD =	flavored

CONFIGURE_ARGS =	-DUSE_PULSEAUDIO:Bool=Yes \
			-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT:Bool=TRUE

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif

.include <bsd.port.mk>
