# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		conversion library for Texas Instruments calculators

TILP_VERSION =		-1.1.4
TILP_PROJECT =		libticonv
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

SHARED_LIBS +=		ticonv                    0.0 # 6.4

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		devel/glib2

CONFIGURE_ARGS =	--enable-static

WANTLIB += glib-2.0 intl pcre pthread

.include <bsd.port.mk>
