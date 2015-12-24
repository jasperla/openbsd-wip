# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	ht-en
LANG =	Haitian Creole/English
V =	0.1.0

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`" \
			LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`"

.include <bsd.port.mk>
