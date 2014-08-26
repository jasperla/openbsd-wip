# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-2.4

CATEGORIES =		emulators

HOMEPAGE =		http://viceteam.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SDL SM X11 Xaw Xext Xmu Xpm Xrandr Xt Xv Xxf86vm
WANTLIB += c gif jpeg png m pthread readline stdc++ termcap usbhid
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

LIB_DEPENDS =		devel/sdl \
			graphics/giflib \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	gnu autoconf

AUTOCONF_VERSION =	2.68

CONFIGURE_ARGS +=	--without-oss \
			--without-pulse \
			--with-sdlsound

# XXX broken with ffmpeg-20131216
CONFIGURE_ARGS +=	--disable-ffmpeg

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

.include <bsd.port.mk>
