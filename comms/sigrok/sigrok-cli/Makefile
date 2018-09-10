# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		command-line frontend for sigrok logic analyzer

SIGROK_PROJECT =        sigrok-cli
SIGROK_VERSION =        0.7.0

WANTLIB += c glib-2.0 intl sigrok sigrokdecode

LIB_DEPENDS =		comms/sigrok/libsigrok \
			comms/sigrok/libsigrokdecode \
			devel/glib2

.include <bsd.port.mk>
