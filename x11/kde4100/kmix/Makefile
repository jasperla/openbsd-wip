# $OpenBSD$
COMMENT =	KDE audio mixer
CATEGORIES =	audio
DISTNAME =	kmix-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui plasma solid
WANTLIB += canberra glib-2.0 pulse pulse-mainloop-glib

MODKDE4_USE =	libs

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/pulseaudio \
		audio/libcanberra

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
