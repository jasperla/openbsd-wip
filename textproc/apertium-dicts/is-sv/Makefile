# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	is-sv
LANG =	Icelandic/Swedish
V =	0.1.0

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

BUILD_DEPENDS +=	textproc/vislcg3

.include <bsd.port.mk>
