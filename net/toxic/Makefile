# $OpenBSD$

COMMENT =		CLI Tox client

CATEGORIES =		net

HOMEPAGE =		https://github.com/Jfreegman/toxic

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.8.1

WANTLIB += c config curses curl m ncursesw png pthread qrencode toxcore
WANTLIB += toxdns toxencryptsave z

LIB_DEPENDS =		net/toxcore \
			devel/libconfig \
			net/curl \
			graphics/libqrencode \

FLAVORS = python no_x11 notify sound
FLAVOR ?=

USE_GMAKE =		yes

.if ${FLAVOR:Mpython}
MAKE_ENV +=		PYTHON_ENABLE=1
LIB_DEPENDS +=		lang/python/3.6
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

.if ${FLAVOR:Msound}
WANTLIB +=		alut openal opus toxav vpx
LIB_DEPENDS +=		audio/freealut \
			audio/openal
.else
MAKE_ENV +=		DISABLE_AV=1 \
			DISABLE_SOUND_NOTIFY=1
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
