# $OpenBSD$

COMMENT =	K Desktop Environment, SANE (scanner) wrapper library
DISTNAME =	libksane-${MODKDE_VERSION}

SHARED_LIBS =	ksane			0.0	# 0.2

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg 
WANTLIB += kdeui
WANTLIB += sane

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/sane-backends
RUN_DEPENDS = 	x11/gtk+2,-guic

.include <bsd.port.mk>
