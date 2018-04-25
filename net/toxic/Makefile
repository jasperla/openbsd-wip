# $OpenBSD$

COMMENT =		ncurses-based Tox client

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.8.2

CATEGORIES =		net

HOMEPAGE =		https://github.com/Jfreegman/toxic

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 alut c config curses curl gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl notify m openal png pthread qrencode toxcore
WANTLIB += util vpx z ${MODPY_WANTLIB}

LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			devel/libnotify \
			net/curl \
			graphics/libqrencode

RUN_DEPENDS =		devel/desktop-file-utils

MAKE_ENV +=		ENABLE_PYTHON=1
MAKE_ENV +=		USER_CFLAGS="${CFLAGS}"
MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
CONFIGURE_STYLE =	none

USE_GMAKE =		yes

NO_TEST =		Yes

.include <bsd.port.mk>
