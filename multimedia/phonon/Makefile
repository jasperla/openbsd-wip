# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:15 espie Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel x11/kde4
VERSION =	4.5.0
DISTNAME =	phonon-${VERSION}
REVISION =	2

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

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/${VERSION}/src/}

MODULES =	devel/cmake \
		x11/qt4

WANTLIB =	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtTest lib/qt4/QtXml
WANTLIB +=	m qzeitgeist stdc++

BUILD_DEPENDS =	x11/kde4/automoc

LIB_DEPENDS =	productivity/qzeitgeist

SEPARATE_BUILD =	flavored

CONFIGURE_ARGS =	-DUSE_PULSEAUDIO:Bool=No

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif

.include <bsd.port.mk>
