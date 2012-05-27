# $OpenBSD$

COMMENT =		Equinox desktop environment

DISTNAME =		ede-${V}

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama Xpm Xrandr c crypto
WANTLIB += curl dbus-1 fltk fltk_images fontconfig idn jpeg m
WANTLIB += png pthread ssl startup-notification-1 stdc++ xkbfile
WANTLIB += z

MODULES =		lang/python \
			devel/gettext
BUILD_DEPENDS =		x11/ede/lib
LIB_DEPENDS =		devel/startup-notification \
			graphics/jpeg \
			graphics/png \
			devel/libidn \
			x11/fltk \
			x11/dbus \
			net/curl
RUN_DEPENDS =		x11/ede/lib \
			devel/desktop-file-utils

FAKE_FLAGS =		sysconfdir="${TRUEPREFIX}/share/examples/ede"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			PTHREAD_LIBS="-pthread" PTHREAD_CFLAGS="-pthread" \
			PYTHON=python${MODPY_VERSION}

NO_REGRESS =		Yes

MODPY_ADJ_FILES =	doc/asciidoc/asciidoc.py

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -d x

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} \
		DESTDIR="${WRKINST}" jam -d x install

.include <bsd.port.mk>
