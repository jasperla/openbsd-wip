# $OpenBSD$

COMMENT =	KDE compact discs interface library
DISTNAME =	libkcompactdisc-${MODKDE_VERSION}

SHARED_LIBS =	kcompactdisc		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus
WANTLIB += phonon solid

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
