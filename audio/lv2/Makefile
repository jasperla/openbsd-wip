# $OpenBSD$

COMMENT=	open standard for audio plugins, used by hundreds of plugins

DISTNAME=	lv2-1.18.0

CATEGORIES=	audio

HOMEPAGE=	https://lv2plug.in

MAINTAINER=     Dimitri Karamazov <deserter666@danwin1210.me>

# ISC
PERMIT_PACKAGE= Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xrandr Xrender expat ffi fontconfig
WANTLIB += freetype intl m pcre pixman-1 pthread sndfile xcb xcb-render
WANTLIB += xcb-shm z
WANTLIB += cairo gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 png
WANTLIB += atk-1.0 fribidi gdk-x11-2.0 gdk_pixbuf-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0

MODULES +=	lang/python

MASTER_SITES=	http://lv2plug.in/spec/

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	audio/libsndfile \
		x11/gtk+2

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

MODPY_ADJ_FILES=lv2specgen/lv2specgen.py

NO_TEST=	Yes

do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} CXX='${CXX}' CC='${CC}'  \
	   ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--destdir=${DESTDIR} \
		--mandir=${PREFIX}/man \
		--copy-headers \
		--debug

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install

.include <bsd.port.mk>
