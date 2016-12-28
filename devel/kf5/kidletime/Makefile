# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =		reporting of idle time of user and system
DISTNAME =		kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		1.0

WANTLIB += ICE Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 X11-xcb Xext Xss m xcb xcb-sync

NO_TEST =		Yes

.include <bsd.port.mk>
