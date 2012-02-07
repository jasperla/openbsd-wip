# $OpenBSD: Makefile,v 1.8 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, admin tools
DISTNAME =	kdeadmin-${MODKDE_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio kldap kntlm

MODULES =	lang/python
MODKDE4_USE =	pim

BUILD_DEPENDS =	devel/py-sip \
		print/py-cups \
		print/system-config-printer \
		x11/kde4/py-kde

RUN_DEPENDS =	print/py-cups \
		print/system-config-printer \
		x11/gtk+2,-guic \
		x11/kde4/py-kde

CONFIGURE_ARGS =	-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE

MAKE_FLAGS =		-DINSTALL_SYSTEM_CONFIG_PRINTER=TRUE

MODPY_ADJ_FILES =	system-config-printer-kde/pysmb.py \
			system-config-printer-kde/authconn.py \
			system-config-printer-kde/system-config-printer-kde.py

.include <bsd.port.mk>
