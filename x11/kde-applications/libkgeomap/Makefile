# $OpenBSD: Makefile,v 1.3 2015/12/26 22:39:21 zhuk Exp $

COMMENT =	library for mapping photos on maps for KDE
DISTNAME =	libkgeomap-${VERSION}


CATEGORIES =	geo graphics net
KDE5 =		Yes

LIB_DEPENDS =		x11/qt5/qtwebkit

#LIB_DEPENDS =		${MODKDE4_DEP_DIR}/libkexiv2 \
#			${MODKDE4_DEP_DIR}/marble

#MODULES =		multimedia/phonon devel/gettext

#MODKDE4_USE =		libs

# neede by kgeomap_test_itemmarkertiler
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
