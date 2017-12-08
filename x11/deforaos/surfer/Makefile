# $OpenBSD$

V =		0.2.10
COMMENT =	DeforaOS Desktop web browser
DISTNAME =	deforaos-surfer-${V}

GH_PROJECT =	Surfer
GH_TAGNAME =	Surfer_${V:S/./-/g}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Desktop System X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl javascriptcoregtk-1.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 soup-2.4 webkitgtk-1.0
WANTLIB += z

BUILD_DEPENDS =	devel/gettext-tools \
		textproc/libxslt

# Desperately needs a webkit update...
LIB_DEPENDS =	www/webkit \
		x11/deforaos/libdesktop

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/doc-Makefile ${WRKSRC}/doc/Makefile

.include <bsd.port.mk>
