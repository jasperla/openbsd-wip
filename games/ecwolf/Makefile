#	$OpenBSD$

COMMENT=	source port for Wolfenstein 3D and Spear of Destiny
V=		1.3
DISTNAME=	ecwolf-${V}-src
PKGNAME=	ecwolf-${V}
CATEGORIES=	games x11

HOMEPAGE=	http://maniacsvault.net/ecwolf/
MASTER_SITES=	${HOMEPAGE}/files/ecwolf/1.x/
EXTRACT_SUFX=	.7z

# wolf3d was relicensed under GPLv2 after release
# cmake flag picks the DOSBox OPL instead of the MAME one
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	archivers/p7zip
LIB_DEPENDS=	devel/sdl-mixer \
		graphics/jpeg \
		archivers/bzip2

WANTLIB=	SDL SDL_mixer bz2 c jpeg m pthread stdc++ z

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DNO_GTK:Bool=True -DGPL:Bool=True

pre-extract:
		mkdir -p ${WRKSRC}
do-extract:
		cd ${WRKDIR} && 7z x ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/ecwolf
		${INSTALL_DATA} ${WRKBUILD}/ecwolf.pk3 ${PREFIX}/share/ecwolf

.include <bsd.port.mk>
