COMMENT=		forward dbus screensaver inhibit calls to xss

GH_ACCOUNT =            vincentbernat
GH_PROJECT =            xssproxy
GH_TAGNAME =            v1.1.2

CATEGORIES =		x11

# MIT/X
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11 Xss c intl
WANTLIB +=		glib-2.0 dbus-1

LIB_DEPENDS =		x11/dbus \
			devel/glib2

USE_GMAKE =		yes

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

.include <bsd.port.mk>
