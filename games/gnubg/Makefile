# $OpenBSD$

COMMENT =		GNU Backgammon
V =			1.04.000
DISTNAME =		gnubg-release-${V}-sources
PKGNAME =		gnubg-${V}
CATEGORIES =		games x11
HOMEPAGE =		http://gnubg.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi glib-2.0 gobject-2.0 gthread-2.0 m ncurses pcre
WANTLIB += pthread readline sqlite3

MASTER_SITES =		http://gnubg.org/media/sources/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/glib2

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--disable-cputest
AUTOCONF_VERSION =	2.69
WRKDIST =		${WRKDIR}/gnubg-${V}

.if ${MACHINE_ARCH} == amd64
CONFIGURE_ARGS +=	--enable-simd=sse2
.else
CONFIGURE_ARGS +=	--enable-simd=no
.endif

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gtk \
			--without-python
.else
WANTLIB += GL GLU ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt
WANTLIB += Xxf86vm atk-1.0 cairo canberra canberra-gtk drm expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gio-2.0 glapi gmodule-2.0 graphite2 gtk-x11-2.0 gtkglext-x11-1.0
WANTLIB += harfbuzz ltdl ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangox-1.0 pixman-1 png pthread-stubs python2.7 stdc++
WANTLIB += util vorbis vorbisfile xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm z

FONTSDIR =		"${X11BASE}/lib/X11/fonts/TTF"
CFLAGS +=	-DFONT_VERA=\\\"${FONTSDIR}/DejaVuSans.ttf\\\" \
		-DFONT_VERA_SERIF_BOLD=\\\"${FONTSDIR}/DejaVuSerif-Bold.ttf\\\"
CFLAGS += "-g" # XXX DEBUG

MODULES +=		lang/python \
			x11/gnome
MODGNOME_TOOLS =	desktop-file-utils \
			gtk-update-icon-cache

LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			audio/libcanberra,-gtk \
			x11/gtkglext

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/gnubg ${PREFIX}/bin/gnubg # XXX DEBUG
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/gnubg.desktop ${PREFIX}/share/applications/
.endif

.include <bsd.port.mk>
