# $OpenBSD$

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	redeclipse client
COMMENT-data=	redeclipse data
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=redeclipse/}

HOMEPAGE=	http://www.redeclipse.net/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		redeclipse
V=		1.2
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
DISTNAME=	${N}_${V}_linux_bsd
EXTRACT_SUFX=	.tar.bz2

PKG_ARCH-data=	i386,amd64

# zlib (code) + CC-BY-SA-3.0 (data)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data \
			devel/desktop-file-utils

BUILD_DEPENDS-main=	textproc/gsed
LIB_DEPENDS-main=	devel/sdl \
			devel/sdl-mixer \
			devel/sdl-image
WANTLIB-main+=		GL X11 SDL SDL_image SDL_mixer c m pthread stdc++ z

WRKDIST=		${WRKDIR}/${N}/src
USE_GMAKE=		Yes
NO_REGRESS=		Yes

INSTALL_TARGET=		system-install

.include <bsd.port.mk>
