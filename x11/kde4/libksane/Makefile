# $OpenBSD$

COMMENT =	SANE wrapper library for KDE
DISTNAME =	libksane-${MODKDE_VERSION}

SHARED_LIBS =	ksane			0.0	# 0.2

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg 
WANTLIB += kdecore kdeui
WANTLIB += sane

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/sane-backends

.include <bsd.port.mk>
