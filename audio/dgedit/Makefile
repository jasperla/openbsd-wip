# $OpenBSD: Makefile.template,v 1.88 2020/05/15 01:32:48 abieber Exp $

COMMENT=	the DrumGizmo drumkit editor

V=		0.10.0
DISTNAME=	dgedit-${V}

CATEGORIES=	audio

HOMEPAGE=	https://drumgizmo.org/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

#GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE:=releases/${DISTNAME}/}

WANTLIB += ${COMPILER_LIBCXX} FLAC GL Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xxf86vm
WANTLIB += ao c double-conversion drm execinfo expat freetype
WANTLIB += glapi glib-2.0 graphite2 gthread-2.0 harfbuzz iconv
WANTLIB += icudata icui18n icuuc intl m ogg opus pcre pcre2-16
WANTLIB += png sndfile vorbis vorbisenc xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-sync xcb-xfixes xshmfence z
WANTLIB += zstd

MODULES=	x11/qt5

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	audio/libao \
		audio/libsndfile

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	${CONFIGURE_ENV}

USE_GMAKE=	Yes

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/dgedit.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/icons/dgedit.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps

.include <bsd.port.mk>
