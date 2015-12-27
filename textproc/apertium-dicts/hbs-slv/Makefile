# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	hbs-slv
LANG =	Serbo-Croatian/Slovenian
V =	0.5.0

BUILD_DEPENDS +=	textproc/vislcg3 \
			textproc/apertium-lex-tools

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
