# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		library for Texas Instruments calculators

TILP_VERSION =		2-1.1.7
TILP_PROJECT =		libticalcs
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

SHARED_LIBS +=		ticalcs2                  0.0 # 10.3

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		comms/tilp/libticables \
			comms/tilp/libtifiles \
			comms/tilp/libticonv

CONFIGURE_ARGS =	--enable-static

WANTLIB += glib-2.0 intl pcre pthread ticables2 ticonv tifiles2
WANTLIB += usb usb-1.0 z

.include <bsd.port.mk>
