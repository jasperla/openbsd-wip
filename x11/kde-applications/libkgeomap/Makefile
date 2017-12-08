# $OpenBSD: Makefile,v 1.3 2015/12/26 22:39:21 zhuk Exp $

COMMENT =		library for mapping photos on maps for KDE
DISTNAME =		libkgeomap-${VERSION}

SHARED_LIBS =		kgeomap		0.1

CATEGORIES =		geo graphics net
HOMEPAGE =		https://projects.kde.org/projects/kde/kdegraphics/libs/libkgeomap

WANTLIB += ${COMPILER_LIBCXX} QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += c kdeui kexiv2 khtml kio kjs kparts m marblewidget
WANTLIB += nepomuk nepomukutils soprano

LIB_DEPENDS =		${MODKDE4_DEP_DIR}/libkexiv2 \
			${MODKDE4_DEP_DIR}/marble

MODULES =		multimedia/phonon devel/gettext
MODKDE4_USE =		libs

# neede by kgeomap_test_itemmarkertiler
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
