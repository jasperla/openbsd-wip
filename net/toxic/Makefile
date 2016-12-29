# $OpenBSD$

COMMENT =		CLI Tox client

CATEGORIES =		net

HOMEPAGE =		https://github.com/Jfreegman/toxic

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 alut c config curl gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl m ncursesw notify openal opus png pthread
WANTLIB += qrencode toxav toxcore toxdns toxencryptsave vpx

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.7.2

LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			net/curl \
			devel/libnotify \
			graphics/libqrencode \
			devel/gettext

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
