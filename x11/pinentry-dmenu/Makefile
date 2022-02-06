# $OpenBSD$

COMMENT =		a pinentry program with the charm of dmenu

GH_ACCOUNT =		ritze
GH_PROJECT =		pinentry-dmenu
GH_TAGNAME =		0.2.2

CATEGORIES =		x11 security

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xft Xinerama assuan c config fontconfig gpg-error
WANTLIB += gpgme

LIB_DEPENDS =		devel/libconfig \
			security/gpgme,-main

.include <bsd.port.mk>
