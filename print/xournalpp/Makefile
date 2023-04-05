# XXX Todo list:
#
# - patch default audio device.

COMMENT =	handwriting notetaking with PDF annotation support

V =		1.1.3
DISTNAME =	xournalpp-${V}

GH_ACCOUNT =	xournalpp
GH_PROJECT =	xournalpp
GH_TAGNAME =	v${V}

CATEGORIES =	print graphics productivity

HOMEPAGE =	https://xournalpp.github.io/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPL2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xi atk-1.0 c cairo cairo-gobject
WANTLIB += execinfo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz intl lua5.3 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib portaudio portaudiocpp
WANTLIB += rsvg-2 sndfile xml2 z zip

MODULES =		devel/cmake \
			lang/lua

# Lua version hard-coded in CMakelists.
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		${MODLUA_BUILD_DEPENDS} \
			archivers/libzip \
			audio/libsndfile \
			audio/portaudio-svn>=1970p0 \
			print/poppler \
			x11/gtk+3

SEPARATE_BUILD =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/control/settings/LatexSettings.h
	${SUBST_CMD} ${WRKSRC}/src/util/Stacktrace.cpp

.include <bsd.port.mk>
