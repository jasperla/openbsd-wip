# $OpenBSD: Makefile,v 1.23 2011/09/16 09:48:09 espie Exp $

COMMENT=	UAE amiga emulator
DISTNAME=	uae-0.8.29
CATEGORIES=	emulators x11

HOMEPAGE=	http://uae.coresystems.de/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86dga Xxf86vm atk-1.0
WANTLIB += c cairo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =	http://www.amigaemulator.org/files/sources/develop/
EXTRACT_SUFX =	.tar.bz2
USE_GMAKE =	Yes

MODULES=	devel/gettext
LIB_DEPENDS+=	x11/gtk+2 \
		devel/sdl

CONFIGURE_STYLE=	gnu

# vidmode not building:
# XF86VidModeInfo type not defined. Where should this come from?
CONFIGURE_ARGS+=	--enable-dga --enable-vidmode \
			--with-sdl-sound
CONFIGURE_ENV=		ac_cv_header_sys_audioio_h=no

NO_REGRESS=	Yes

DOCS=		COMPATIBILITY CREDITS FAQ NEWS README README.PROGRAMMERS

FILES=		mousehack timehack transdisk transrom uae-control \
		uae-control.info uae_rcli uaectrl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/uae ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/readdisk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/uae/amiga
	cd ${WRKSRC}/docs && ( \
	  ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/uae; \
	  ${INSTALL_DATA} unix/README ${PREFIX}/share/uae/README.unix )
	cd ${WRKSRC}/amiga && ${INSTALL_DATA} ${FILES} \
	  ${PREFIX}/share/uae/amiga

.include <bsd.port.mk>
