# $OpenBSD$

COMMENT =		GNU Backgammon
V =			1.05.000
DISTNAME =		gnubg-release-${V}-sources
PKGNAME =		gnubg-${V}
CATEGORIES =		games x11
HOMEPAGE =		http://gnubg.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl ffi glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += idn m ncurses nghttp2 pcre pthread readline sqlite3
WANTLIB += ssl z

MASTER_SITES =		http://gnubg.org/media/sources/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/glib2 \
			net/curl

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
WANTLIB += GL GLU ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 cairo canberra canberra-gtk drm expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gio-2.0 glapi gmodule-2.0 gmp graphite2 gtk-x11-2.0
WANTLIB += gtkglext-x11-1.0 harfbuzz ltdl ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangox-1.0 pixman-1 png pthread-stubs
WANTLIB += python2.7 util vorbis vorbisfile xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm

FONTSDIR =		"${X11BASE}/lib/X11/fonts/TTF"
CFLAGS +=	-DFONT_VERA=\\\"${FONTSDIR}/DejaVuSans.ttf\\\" \
		-DFONT_VERA_SERIF_BOLD=\\\"${FONTSDIR}/DejaVuSerif-Bold.ttf\\\"
CFLAGS +=	-g -Wall -Wextra # DEBUG

MODULES =		lang/python \
			x11/gnome
MODGNOME_TOOLS =	desktop-file-utils \
			gtk-update-icon-cache

LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			audio/libcanberra,-gtk \
			devel/gmp \
			x11/gtkglext

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gnubg ${PREFIX}/bin/gnubg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/gnubg.desktop ${PREFIX}/share/applications/
.endif

.include <bsd.port.mk>
