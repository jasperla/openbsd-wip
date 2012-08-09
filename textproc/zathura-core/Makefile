# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

V =			0.2.0
COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-${V}
PKGNAME =		zathura-core-${V}
CATEGORIES =		textproc x11

HOMEPAGE =		http://pwmt.org/projects/zathura/
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@the00z.org>

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 girara-gtk2 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += sqlite3 xcb xcb-render xcb-shm z

MASTER_SITES =	https://pwmt.org/projects/zathura/download/

BUILD_DEPENDS =	textproc/py-docutils
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/atk \
		graphics/gdk-pixbuf2 \
		x11/gtk+2 \
		x11/girara

MAKE_FLAGS =	MANPREFIX=${PREFIX}/man \
		DESKTOPPREFIX=${PREFIX}/share/applications \
		CC="${CC}" \
		VERBOSE=1
FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

USE_GMAKE =	Yes

REGRESS_DEPENDS =	devel/check
REGRESS_TARGET =	test
REGRESS_IS_INTERACTIVE =X11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.mk

.include <bsd.port.mk>

