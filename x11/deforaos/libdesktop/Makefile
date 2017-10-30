# $OpenBSD$

V =		0.2.2
COMMENT =	DeforaOS desktop library
DISTNAME =	deforaos-libdesktop-${V}

SHARED_LIBS +=	Desktop                   0.0 # 0.0

GH_PROJECT =	libDesktop
GH_TAGNAME =	libDesktop_${V:S/./-/g}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += System X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

BUILD_DEPENDS =	textproc/gtk-doc \
		x11/deforaos/configure

LIB_DEPENDS =	x11/deforaos/libsystem \
		x11/gtk+2

pre-configure:
	cd ${WRKSRC} && grep -Rl '\-O2' * | xargs sed -i 's,-O2,${CFLAGS},g'

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/configure
	@cp ${FILESDIR}/doc-Makefile ${WRKSRC}/doc/Makefile
	@cp ${FILESDIR}/src-Makefile ${WRKSRC}/src/Makefile
	sed -i -e 's,-O2,${CFLAGS},g' \
		-e 's,$${LIBDesktop_VERSION},${LIBDesktop_VERSION},g' \
			${WRKSRC}/src/Makefile

.include <bsd.port.mk>
