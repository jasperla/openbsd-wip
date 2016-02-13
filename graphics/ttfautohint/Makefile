# $OpenBSD$

COMMENT-main =		automated hinting process based on FreeType's autohinter #'
COMMENT-gui =		QT-based frontend for ttfautohint

V =			1.5
DISTNAME =		ttfautohint-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-gui =		ttfautohint-gui-${V}
CATEGORIES =		graphics

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://www.freetype.org/ttfautohint/#download

# FreeType License or GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/freetype/

MODULES =		devel/gettext \
			gcc4 \
			x11/qt5

MULTI_PACKAGES =	-main -gui

WANTLIB += c freetype glib-2.0 graphite2 harfbuzz m pcre pthread
WANTLIB += z

WANTLIB-main = ${WANTLIB} stdc++
WANTLIB-gui += ${WNATLIB} GL Qt5Core Qt5Gui Qt5Widgets X11 X11-xcb Xdamage Xext
WANTLIB-gui += Xfixes Xxf86vm drm expat glapi xcb xcb-dri2 xcb-glx

LIB_DEPENDS-main =	devel/harfbuzz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-doc \
			--with-qt
CONFIGURE_ENV +=	QMAKE="${PREFIX}/bin/qmake-qt5"

.include <bsd.port.mk>
