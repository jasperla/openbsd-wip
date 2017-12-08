# $OpenBSD$

V =		0.3.6
COMMENT =	DeforaOS Desktop panel
DISTNAME =	deforaos-panel-${V}

SHARED_LIBS +=	Panel                     0.0 # 0.0

GH_PROJECT =	Panel
GH_TAGNAME =	Panel_${V:S/./-/g}

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

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# The usual
pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/doc-Makefile ${WRKSRC}/doc/Makefile
	@cp ${FILESDIR}/src-Makefile ${WRKSRC}/src/Makefile
	sed -i -e 's,-O2,${CFLAGS},g' \
		-e 's,$${LIBPanel_VERSION},${LIBPanel_VERSION},g' \
			${WRKSRC}/src/Makefile

.include <bsd.port.mk>
