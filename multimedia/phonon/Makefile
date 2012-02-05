# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:15 espie Exp $

COMMENT =	multimedia layer for Qt4/KDE4
CATEGORIES =	multimedia devel x11/kde4
VERSION =	4.6.0
DISTNAME =	phonon-${VERSION}

# Higher than one in Qt4 to avoid issues
SHARED_LIBS +=	phonon			7.0
SHARED_LIBS +=	phononexperimental	2.0

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

WANTLIB =	m stdc++
WANTLIB +=	lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB +=	lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB +=	lib/qt4/QtTest lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB +=	pulse pulse-mainloop-glib qzeitgeist

BUILD_DEPENDS =	x11/kde4/automoc

LIB_DEPENDS =	productivity/qzeitgeist>=0.8.0 \
		audio/pulseaudio

SEPARATE_BUILD =	flavored

CONFIGURE_ARGS =	-DPHONON_INSTALL_QT_EXTENSIONS_INTO_SYSTEM_QT:Bool=Yes

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif

.include <bsd.port.mk>
