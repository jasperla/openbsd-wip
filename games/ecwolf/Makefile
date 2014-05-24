#	$OpenBSD$

COMMENT=	source port for Wolfenstein 3D and Spear of Destiny
V=		1.2.3
DISTNAME=	ecwolf-${V}-src
PKGNAME=	ecwolf-${V}
CATEGORIES=	games x11

HOMEPAGE=	http://maniacsvault.net/ecwolf/
MASTER_SITES=	${HOMEPAGE}/files/ecwolf/1.x/
EXTRACT_SUFX=	.7z

# The original 'LICENSE.DOC' does not grant (m)any rights
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	archivers/p7zip
LIB_DEPENDS=	devel/sdl-mixer \
		graphics/jpeg \
		archivers/bzip2

WANTLIB=	SDL SDL_mixer bz2 c jpeg m pthread stdc++ z

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DNO_GTK:Bool=True

pre-extract:
		mkdir -p ${WRKSRC}
do-extract:
		cd ${WRKDIR} && 7z x ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/ecwolf
		${INSTALL_DATA} ${WRKBUILD}/ecwolf.pk3 ${PREFIX}/share/ecwolf

.include <bsd.port.mk>
