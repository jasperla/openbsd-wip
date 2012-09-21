# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		minimal MIDI sequencer

#http://www.filter24.org/seq24/seq24-0.8.7.tar.gz
DISTNAME =		seq24-0.8.7

CATEGORIES =		audio

HOMEPAGE =		http://www.filter24.org/seq24/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		x11/gtk2mm

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.11

CONFIGURE_ARGS =	--disable-jack-support
MAKE_FLAGS =		ALSA_LIBS= ALSA_CFLAGS=

NO_REGRESS =		Yes

.include <bsd.port.mk>
