# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		conversion library for Texas Instruments calculators

TILP_VERSION =		-1.1.3
TILP_PROJECT =		libticonv
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

SHARED_LIBS +=		ticonv                    0.0 # 6.4

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		devel/glib2
CFLAGS +=		-I/usr/local/include

CONFIGURE_ARGS =	--enable-static

WANTLIB += iconv intl pcre glib-2.0

.include <bsd.port.mk>
