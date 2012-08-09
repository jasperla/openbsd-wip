# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		user interface library from pwmt
DISTNAME =		girara-0.1.3

GIRARA_SOMAJOR = 0
GIRARA_SOMINOR = 0
SHARED_LIBS +=		girara-gtk2 ${GIRARA_SOMAJOR}.${GIRARA_SOMINOR} # 1.0

CATEGORIES =		x11
HOMEPAGE =		http://pwmt.org/projects/girara/

# zlib
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pwmt.org/projects/girara/download/

LIB_DEPENDS =		x11/gtk+2

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

USE_GMAKE =	Yes

MAKE_FLAGS +=	QUIET=
MAKE_FLAGS +=	SOMAJOR=${GIRARA_SOMAJOR} SOMINOR=${GIRARA_SOMINOR}

FAKE_FLAGS +=	PREFIX=${TRUEPREFIX}

REGRESS_TARGET =	test
REGRESS_DEPENDS =	devel/check
REGRESS_FLAGS +=	QUIET=
REGRESS_FLAGS +=	HOME=${HOME}
REGRESS_IS_INTERACTIVE =X11

.include <bsd.port.mk>
