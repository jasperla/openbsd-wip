# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-2.3

CATEGORIES =		emulators

HOMEPAGE =		http://viceteam.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	ICE SM X11 Xaw Xext Xmu Xpm Xt Xv c m ncurses ossaudio
WANTLIB +=	readline stdc++ usbhid z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

CONFIGURE_STYLE =	gnu autoconf

AUTOCONF_VERSION =	2.67

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

.include <bsd.port.mk>
