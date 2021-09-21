# $OpenBSD$

COMMENT =	minimalist and privacy-oriented WebKitGTK+ browser
DISTNAME =	badwolf-1.1.0
CATEGORIES =	www x11

HOMEPAGE =	https://hacktivis.me/projects/badwolf
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl
WANTLIB += javascriptcoregtk-4.0 pango-1.0 pangocairo-1.0 soup-2.4
WANTLIB += webkit2gtk-4.0 xml2

MASTER_SITES =	https://hacktivis.me/releases/

# C11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	www/webkitgtk4

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

SUBST_VARS +=	DISTNAME

.include <bsd.port.mk>
