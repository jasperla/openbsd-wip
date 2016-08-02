# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		command-line frontend for sigrok logic analyzer

SIGROK_PROJECT =        pulseview
SIGROK_VERSION =        0.2.0

WANTLIB += c ftdi glib-2.0 gthread-2.0 iconv intl m pcre pthread
WANTLIB += sigrok sigrokdecode usb usb-1.0 util z zip

MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake

.include <bsd.port.mk>
