# $OpenBSD$

ONLY_FOR_ARCHS= amd64

COMMENT=	completely free game for the FOSS Quake3 engine

DISTNAME=	tremulous-1.1.0
EXTRACT_SUFX=	.zip
CATEGORIES=	games x11

MAINTAINER=	ports@openbsd.org

HOMEPAGE=	http://www.tremulous.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tremulous/}

PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

WANTLIB=	c m pthread SDL>=7
LIB_DEPENDS=	devel/sdl

ALL_TARGET=	build_release
MAKE_FLAGS=	USE_OPENAL=0

WRKDIST=	${WRKDIR}/tremulous/tremulous-1.1.0-src/

SUBST_VARS=	LOCALBASE

post-extract:
	@cd ${WRKDIR}/tremulous/ && tar zxf ${PKGNAME}-src.tar.gz

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/tremulous ${PREFIX}/bin/tremulous
	${SUBST_PROGRAM} ${FILESDIR}/tremulous-server ${PREFIX}/bin/tremulous-server
	${INSTALL_PROGRAM} ${WRKDIST}/build/release-openbsd-x86-64/tremulous.x86-64 ${PREFIX}/bin/tremulous-bin
	${INSTALL_PROGRAM} ${WRKDIST}/build/release-openbsd-x86-64/tremded.x86-64 ${PREFIX}/bin/tremulous-dedicated
	${INSTALL_DATA_DIR} ${PREFIX}/share/tremulous/base
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tremulous
	${INSTALL_DATA} ${WRKDIR}/tremulous/GPL ${PREFIX}/share/doc/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/CC ${PREFIX}/share/doc/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/COPYING ${PREFIX}/share/doc/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/ChangeLog ${PREFIX}/share/doc/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/manual.pdf ${PREFIX}/share/doc/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/tremulous.xpm ${PREFIX}/share/tremulous/
	${INSTALL_DATA} ${WRKDIR}/tremulous/base/* ${PREFIX}/share/tremulous/base/

.include <bsd.port.mk>
