# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, admin tools
DISTNAME =	kdeadmin-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore>=8 kdeui kio kldap kntlm

# Run-time dependency is enough
# RUN_DEPENDS =	x11/py-kde4

LIB_DEPENDS = 	x11/kde4/libs \
		x11/kde4/pimlibs \
		x11/py-qt4,-main \
		print/system-config-printer

CONFIGURE_ARGS =	-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE

MAKE_FLAGS =		-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE

.include <bsd.port.mk>
