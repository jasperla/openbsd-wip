# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =		K Desktop Environment, admin tools
DISTNAME =		kdeadmin-${MODKDE_VERSION}

WANTLIB += c kdecore>=8 kdeui kio kldap kntlm \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m pthread stdc++

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/pimlibs \
		x11/py-qt4,-main \
		print/system-config-printer

# RUN_DEPENDS +=	x11/py-kde4

# Run-time dependency is enough
CONFIGURE_ARGS +=	-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE
MAKE_FLAGS +=		-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE

.include <bsd.port.mk>
