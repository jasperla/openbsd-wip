# $OpenBSD$
# $RedRiver: Makefile,v 1.6 2007/02/24 01:32:46 andrew Exp $

COMMENT-main=	"a version of the board game Settlers of Catan written in Java"
COMMENT-web=	"web pages to make it easy for clients to connect to your jsettlers server"

DISTNAME=	jsettlers-1.0.6
PKGNAME-main=	${DISTNAME}
PKGNAME-web=	${DISTNAME:S/-/-web-/}

MAINTAINER=	Andrew Fresh <andrew@mad-techies.org>

CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jsettlers/}
HOMEPAGE=	http://sourceforge.net/projects/jsettlers/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=-main -web
PREFIX-web=/var/www

.if ! defined(SUBPACKAGE)
RUN_DEPENDS=		:jre-*|jdk-*:devel/jdk/1.5
.endif

NO_CONFIGURE=		Yes
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-web}/jsettlers/
	${INSTALL_DATA} ${WRKSRC}/web/*.html ${WRKINST}${PREFIX-web}/jsettlers/
	${INSTALL_DATA} ${WRKSRC}/JSettlers.jar ${WRKINST}${PREFIX-web}/jsettlers/
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-web}/jsettlers/users
	${INSTALL_DATA} ${WRKSRC}/docs/users/*.html ${WRKINST}${PREFIX-web}/jsettlers/users/
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-web}/jsettlers/users/images
	${INSTALL_DATA} ${WRKSRC}/docs/users/images/* ${WRKINST}${PREFIX-web}/jsettlers/users/images/
	
	${INSTALL_DATA} ${WRKSRC}/JSettlers.jar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/JSettlersServer.jar ${PREFIX}/bin
	
	cp -r ${WRKSRC}/docs ${PREFIX}/share/doc/jsettlers
	${INSTALL_DATA} ${WRKSRC}/COPYING.txt ${PREFIX}/share/doc/jsettlers/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/jsettlers/
	${INSTALL_DATA} ${WRKSRC}/VERSIONS.txt ${PREFIX}/share/doc/jsettlers/

.include <bsd.port.mk>
