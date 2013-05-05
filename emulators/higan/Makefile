#	$OpenBSD$

COMMENT=	multi-system emulator
CATEGORIES=	emulators games

N=		higan
V=		0.92
PKGNAME=	${N}-${V}
DISTNAME=	${N}_v${V:S/.//}-source
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://byuu.org/higan/
MASTER_SITES=	http://higan.googlecode.com/files/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MODULES=	gcc4

MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++
# needs at least 4.7...
MODGCC4_VERSION=	4.8

WANTLIB += GL SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xv atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl
WANTLIB += openal m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS=	audio/openal \
		devel/sdl \
		x11/gtk+2

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

PROFILE=balanced
#PROFILE=accurancy
#PROFILE=performance

USE_GMAKE=	Yes
MAKE_ENV+=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" profile="${PROFILE}"

do-build:
.for targ in ananke higan
	@cd ${WRKBUILD}/${targ} && exec ${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/higan/out/higan ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/higan/data/higan.png ${PREFIX}/share/pixmaps/higan.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/higan/data/higan.desktop \
	    ${PREFIX}/share/applications/higan.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/higan
	cp -R ${WRKSRC}/higan/profile/* ${PREFIX}/share/examples/higan/
	${INSTALL_DATA} ${WRKSRC}/higan/data/cheats.bml ${PREFIX}/share/examples/higan
	${INSTALL_PROGRAM} ${WRKSRC}/ananke/libananke.so ${PREFIX}/lib

.include <bsd.port.mk>
