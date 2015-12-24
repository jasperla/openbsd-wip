# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

L =	cy-en
LANG =	Welsh/English
V =	0.1.1

USE_GMAKE =		Yes

BUILD_DEPENDS +=	textproc/vislcg3

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>
