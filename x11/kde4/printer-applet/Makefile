# $OpenBSD$

COMMENT =	K Desktop Environment, printer status applet
DISTNAME =	printer-applet-${MODKDE_VERSION}


MODULES =	lang/python

BUILD_DEPENDS =		x11/kde4/py-kde \
			print/py-cups \
			print/system-config-printer

MODPY_ADJ_FILES =	authconn.py \
			debug.py \
			monitor.py \
			printer-applet.py \
			statereason.py

.include <bsd.port.mk>
