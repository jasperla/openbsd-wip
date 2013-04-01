# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-2.4

CATEGORIES =		emulators

HOMEPAGE =		http://viceteam.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xaw Xext Xmu Xpm Xrandr Xt Xv Xxf86vm c
WANTLIB += m ossaudio readline stdc++ termcap usbhid z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

CONFIGURE_STYLE =	gnu autoconf

AUTOCONF_VERSION =	2.68

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

.include <bsd.port.mk>
