# $OpenBSD$

V =		0.1.0
COMMENT =	DeforaOS Desktop terminal emulator
DISTNAME =	deforaos-terminal-${V}

GH_PROJECT =	Terminal
GH_TAGNAME =	Terminal_${V:S/./-/g}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Desktop System X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

BUILD_DEPENDS =	devel/gettext-tools \
		textproc/libxslt

LIB_DEPENDS =	x11/deforaos/libdesktop

RUN_DEPENDS =	devel/desktop-file-utils

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'
	sed -i 's,X11DIR,"${X11BASE}/bin",g' ${WRKSRC}/src/terminal.c

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/doc-Makefile ${WRKSRC}/doc/Makefile

.include <bsd.port.mk>
