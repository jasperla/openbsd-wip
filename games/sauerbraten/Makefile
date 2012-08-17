# $OpenBSD$

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	sauerbraten client
COMMENT-data=	sauerbraten data
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sauerbraten/}

HOMEPAGE=	http://sauerbraten.org/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		sauerbraten
V=		20100728
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
DISTNAME=	${N}_2010_07_28_justice_edition_linux
EXTRACT_SUFX=	.tar.bz2

PKG_ARCH-data=	i386,amd64

# zlib (code) + no modification (data)
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=		${WRKDIR}/${N}/src
AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9
USE_GMAKE=		Yes
NO_REGRESS=		Yes

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data

LIB_DEPENDS-main=	devel/sdl \
			devel/sdl-mixer \
			devel/sdl-image
WANTLIB-main=		GL X11 SDL SDL_image SDL_mixer c m pthread stdc++ z

post-patch:
	@cd ${WRKSRC}/enet && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal

pre-configure:
	@cd ${WRKSRC}/enet && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --foreign

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sauer_client ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/sauer_server ${PREFIX}/libexec
	cp ${FILESDIR}/sauerbraten.sh ${WRKSRC}/sauerbraten.sh
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKSRC}/sauerbraten.sh
	${INSTALL_SCRIPT} ${WRKSRC}/sauerbraten.sh ${PREFIX}/bin/sauerbraten
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	cp -R ${WRKDIR}/${N}/docs/* ${PREFIX}/share/doc/${N}/
	@perl -pi -e s,docs/,, ${WRKDIR}/${N}/README.html
	${INSTALL_DATA} ${WRKDIR}/${N}/README.html ${PREFIX}/share/doc/${N}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	cp -R ${WRKDIR}/${N}/packages ${PREFIX}/share/${N}
	cp -R ${WRKDIR}/${N}/data ${PREFIX}/share/${N}

.include <bsd.port.mk>
