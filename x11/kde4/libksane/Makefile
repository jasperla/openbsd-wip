# $OpenBSD$

COMMENT =	SANE wrapper library for KDE
DISTNAME =	libksane-${VERSION}

SHARED_LIBS +=	ksane			0.0	# 0.2

LIB_DEPENDS += 	x11/kde4/libs \
		graphics/sane-backends

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg 
WANTLIB += kdecore kdeui
WANTLIB += sane

.include <bsd.port.mk>
