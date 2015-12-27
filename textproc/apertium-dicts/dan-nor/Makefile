# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	dan-nor
LANG =	Danish/Norwegian
V =	1.0.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-lex-tools \
			textproc/vislcg3

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`" \
			APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
