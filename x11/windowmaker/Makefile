# $OpenBSD: Makefile,v 1.90 2013/09/25 07:58:50 sthen Exp $

COMMENT-main=		window manager that emulates NEXTSTEP(tm)
COMMENT-lang=		language subpackage for Window Maker

V =			0.95.5
DISTNAME=		WindowMaker-${V}
PKGNAME-main=		${DISTNAME:L}
FULLPKGNAME-lang=	windowmaker-lang-${V}

SHARED_LIBS +=  WINGs                     0.0 # 2.1
SHARED_LIBS +=  WMaker                    0.0 # 1.1
SHARED_LIBS +=  WUtil                     0.0 # 3.0
SHARED_LIBS +=  wraster                   5.1 # 4.1

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.info

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xmu Xpm Xrender Xt c expat
WANTLIB += fontconfig freetype gif jpeg kvm m png pthread-stubs
WANTLIB += tiff xcb z

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

NO_TEST=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-xinerama \
			--with-datadir="${LOCALBASE}/share/WindowMaker" \
			--with-nlsdir="${LOCALBASE}/share/locale"

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib" \
			LINGUAS='be bg bs ca cs da de el es et fi fr gl hr hu it ja ko ms nl no pl pt ro ru sk sv tr zh_CN zh_TW'

MULTI_PACKAGES=		-main -lang

MODULES=		devel/gettext
LIB_DEPENDS=		graphics/tiff \
			graphics/png \
			graphics/giflib

RUN_DEPENDS-lang =	windowmaker-${V}:x11/windowmaker
LIB_DEPENDS-lang=
WANTLIB-lang=

#pre-configure:
#	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
#	${WRKSRC}/WINGs/wapplication.c \
#	${WRKSRC}/WPrefs.app/Menu.c \
#	${WRKSRC}/WPrefs.app/Paths.c \
#	${WRKSRC}/WindowMaker/Defaults/WMWindowAttributes.in \
#	${WRKSRC}/WindowMaker/Defaults/WindowMaker.in

WMAKER_SHARE =		${PREFIX}/share/WindowMaker
post-install:
	mv ${WRKINST}/${SYSCONFDIR}/WindowMaker ${PREFIX}/share/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds
	${INSTALL_DATA_DIR} ${PREFIX}/GNUstep/Applications
	ln -s ${LOCALBASE}/share/WPrefs ${PREFIX}/GNUstep/Applications/WPrefs.app
# Rename wrongly named locale files
	@mv ${WMAKER_SHARE}/menu.cz ${WMAKER_SHARE}/menu.cs
	@mv ${WMAKER_SHARE}/menu.se ${WMAKER_SHARE}/menu.sv

.include <bsd.port.mk>
