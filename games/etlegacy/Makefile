# $OpenBSD$

ONLY_FOR_ARCHS=	i386 amd64
CATEGORIES=	games x11
COMMENT=	Wolfenstein Enemy Territory (ET Legacy)

HOMEPAGE=	http://www.etlegacy.com/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MASTER_SITES=	https://github.com/etlegacy/etlegacy/tarball/master/
DISTNAME=	etlegacy-etlegacy-2862f09
PKGNAME=	etlegacy-20120815

LIB_DEPENDS=	devel/sdl \
		graphics/jpeg \
		net/curl
RUN_DEPENDS=	games/enemy-territory-data
WANTLIB=	GL GLU ICE SDL SM X11 Xext c curl jpeg m pthread

MODULES=	devel/cmake

# GPLv3+additions
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

post-install:
	cp ${FILESDIR}/etlegacy.sh ${WRKSRC}/
	@perl -pi -e s,%%LOCALBASE%%,${LOCALBASE}, ${WRKSRC}/etlegacy.sh
	${INSTALL_SCRIPT} ${WRKSRC}/etlegacy.sh ${PREFIX}/bin/etlegacy

.include <bsd.port.mk>
