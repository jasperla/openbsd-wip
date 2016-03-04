# $OpenBSD$

COMMENT =		CLI Tox client

CATEGORIES =		net

HOMEPAGE =		https://github.com/Jfreegman/toxic

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 alut c config curl gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 m ncursesw notify openal opus pthread
WANTLIB += qrencode sodium toxav toxcore toxdns toxencryptsave
WANTLIB += vpx

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.7.0

MODULES =		devel/gettext
LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			net/curl \
			devel/libnotify \
			graphics/libqrencode

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
