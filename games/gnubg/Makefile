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

WANTLIB += GL GLU ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt
WANTLIB += Xxf86vm atk-1.0 c cairo canberra canberra-gtk drm expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkglext-x11-1.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 gtkglext-x11-1.0
WANTLIB += harfbuzz ltdl m ncurses ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangox-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += python2.7 readline sqlite3 stdc++ util vorbis vorbisfile
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm z

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

FLAVORS =		minimal
FLAVOR ?=

.if ${FLAVOR:Mminimal}
CONFIGURE_ARGS +=	--without-gtk --without-canberra --without-python
.else
MODULES +=		lang/python
LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			audio/libcanberra,-gtk \
			x11/gtkglext
.endif

.include <bsd.port.mk>
