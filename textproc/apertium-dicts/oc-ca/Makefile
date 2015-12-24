# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	oc-ca
LANG =	Occitan/Catalan
V =	1.0.6

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
