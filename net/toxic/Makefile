# $OpenBSD$

COMMENT =		ncurses-based Tox client

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.8.2

CATEGORIES =		net

HOMEPAGE =		https://github.com/Jfreegman/toxic

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += alut c config curses curl m openal png pthread
WANTLIB += qrencode toxcore vpx z

LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			net/curl \
			graphics/libqrencode

RUN_DEPENDS =		devel/desktop-file-utils

FLAVORS = python3 no_x11 notify
FLAVOR ?=

USE_GMAKE =		yes

.if ${FLAVOR:Mpython3}
MAKE_ENV +=		ENABLE_PYTHON=1
MODULES =		lang/python
CONFIGURE_STYLE =	none
.endif

.if ${FLAVOR:Mno_x11}
MAKE_ENV +=		DISABLE_X11=1
.else
WANTLIB += X11
.endif

.if ${FLAVOR:Mnotify}
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl notify
LIB_DEPENDS +=		devel/libnotify
.else
MAKE_ENV +=		DISABLE_DESKTOP_NOTIFY=1
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
