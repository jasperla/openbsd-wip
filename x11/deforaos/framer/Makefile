# $OpenBSD$

V =		0.0.0.1
COMMENT =	DeforaOS Desktop window manager
DISTNAME =	deforaos-framer-${V}

GH_PROJECT =	Framer
GH_COMMIT =	7b222c4b2bb62fb95024bd0e2ef8633fe23ada34

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

BUILD_DEPENDS =	devel/gettext-tools \
		textproc/libxslt

LIB_DEPENDS =	x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure

.include <bsd.port.mk>
