# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		files library for Texas Instruments calculators

TILP_VERSION =		2-1.1.5
TILP_PROJECT =		libtifiles
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

SHARED_LIBS +=		tifiles2                  0.0 # 8.2

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		comms/tilp/libticonv

CONFIGURE_ARGS =	--enable-static

WANTLIB += iconv intl ticonv z glib-2.0 pcre

.include <bsd.port.mk>
