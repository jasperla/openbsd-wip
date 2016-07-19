# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		sigrok hardware driver library

SIGROK_PROJECT =	libsigrok
SIGROK_VERSION =	0.3.0

SHARED_LIBS +=  sigrok                    0.0 # 0.0

WANTLIB += ftdi glib-2.0 iconv intl m pcre pthread usb serialport
WANTLIB += usb-1.0 z zip

LIB_DEPENDS =		archivers/libzip \
			comms/sigrok/libserialport \
			devel/glib2 \
			devel/libftdi \
			devel/libusb1

.include <bsd.port.mk>
