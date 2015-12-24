# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	af-nl
LANG =	Afrikaans/Dutch
V =	0.2.0

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
