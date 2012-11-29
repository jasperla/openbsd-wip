# $OpenBSD$

COMMENT =	K Desktop Environment, printer status applet
DISTNAME =	printer-applet-${MODKDE_VERSION}
REVISION =	0

MODULES =	lang/python

BUILD_DEPENDS =		x11/kde4/py-kde \
			print/py-cups>=1.9.62p0 \
			print/system-config-printer

RUN_DEPENDS =		print/py-cups>=1.9.62p0 \
			print/system-config-printer

MODPY_ADJ_FILES =	authconn.py \
			debug.py \
			monitor.py \
			printer-applet.py \
			statereason.py

CONFIGURE_ARGS =	-DINSTALL_PRINTER_APPLET:Bool=TRUE

post-patch:
	${SUBST_CMD} ${WRKSRC}/cmake-modules/FindSystemConfigPrinter.py

.include <bsd.port.mk>
