# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		command-line frontend for sigrok logic analyzer

SIGROK_PROJECT =        sigrok-cli
SIGROK_VERSION =        0.5.0

WANTLIB += c ftdi glib-2.0 iconv intl m pcre pthread serialport
WANTLIB += sigrok sigrokdecode usb usb-1.0 util z zip
WANTLIB += ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/glib2

.include <bsd.port.mk>
