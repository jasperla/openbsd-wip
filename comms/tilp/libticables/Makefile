# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

COMMENT =		cables library for Texas Instruments calculators

TILP_VERSION =		2-1.3.3
TILP_PROJECT =		libticables
EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		comms

SHARED_LIBS +=		ticables2                 0.0 # 5.0

MODULES =		converters/libiconv \
			textproc/intltool

LIB_DEPENDS =		devel/libusb-compat \
			devel/glib2

WANTLIB +=		iconv intl glib-2.0 pcre usb usb-1.0

CONFIGURE_ARGS =	--enable-static

.include <bsd.port.mk>
