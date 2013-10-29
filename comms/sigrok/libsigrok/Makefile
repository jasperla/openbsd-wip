# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		sigrok hardware driver library

DISTNAME =		libsigrok-0.1.1

SHARED_LIBS +=  sigrok                    0.0 # 0.0

WANTLIB += ftdi glib-2.0 gthread-2.0 iconv intl pcre pthread usb
WANTLIB += usb-1.0 z zip

LIB_DEPENDS =		archivers/libzip \
			devel/glib2 \
			devel/libftdi \
			devel/libusb1

.include <bsd.port.mk>
