# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	en-ca
LANG =	English/Catalan
V =	0.9.3

USE_GMAKE =	Yes

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
