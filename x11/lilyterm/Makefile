# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		lightwieght terminal emulator for X
DISTNAME =		lilyterm-0.9.9.2
CATEGORIES =		x11
HOMEPAGE =		http://lilyterm.luna.com.tw
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs vte xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =		${HOMEPAGE}/file/

LIB_DEPENDS =		devel/vte \
			x11/gtk+2

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple

NO_REGRESS =		Yes

EXAMPLES_DIR =		${PREFIX}/share/examples/lilyterm
post-install:
	rm ${PREFIX}/${SYSCONFDIR}/xdg/lilyterm.conf
	mv ${PREFIX}/share/doc/lilyterm/examples/ ${EXAMPLES_DIR}

.include <bsd.port.mk>
