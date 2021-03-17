# $OpenBSD: Makefile,v 1.67 2019/07/12 20:51:11 sthen Exp $

COMMENT=	multiple virtual desktop window manager

VERSION=	2.6.9
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2-${VERSION}

CATEGORIES=     x11

HOMEPAGE=	http://www.fvwm.org/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# GPL/BSD-like (badly worded)
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcursor Xext Xft Xinerama Xpm Xrender
WANTLIB += c cairo curses fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 iconv intl m png
WANTLIB += readline rsvg-2 z

MASTER_SITES=	https://github.com/fvwmorg/fvwm/releases/download/${VERSION}/

LIB_DEPENDS+=	graphics/png \
		x11/gnome/librsvg

BUILD_DEPENDS=	textproc/libxslt

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+= --enable-debug-msgs
.endif

SUBST_VARS=	VERSION

SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS +=	--disable-bidi \
			--disable-gtk \
			--enable-mandoc \
			--without-gnome \
			--without-rplay-library \
			--without-stroke-library
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA} ${WRKSRC}/default-config/config ${PREFIX}/share/fvwm

.include <bsd.port.mk>
