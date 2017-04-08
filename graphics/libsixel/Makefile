# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	encoder/decoder implementation for DEC SIXEL graphics

GH_ACCOUNT =	saitoha
GH_PROJECT =	libsixel
GH_TAGNAME =	v1.7.3

SHARED_LIBS +=	sixel	0.0	# 1.6

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto curl jpeg m nghttp2 png ssl z

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		net/curl

CONFIGURE_ARGS += --disable-python

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-python

# Requires Python
NO_TEST =	Yes

.include <bsd.port.mk>
