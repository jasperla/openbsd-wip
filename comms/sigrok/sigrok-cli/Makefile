# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		command-line frontend for sigrok logic analyzer

DISTNAME =		sigrok-cli-0.3.1

WANTLIB += c ftdi glib-2.0 gthread-2.0 iconv intl m pcre pthread
WANTLIB += python3.2m sigrok sigrokdecode usb usb-1.0 util z zip

LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/glib2

.include <bsd.port.mk>
