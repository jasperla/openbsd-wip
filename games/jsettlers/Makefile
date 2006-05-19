# $OpenBSD$
# $RedRiver: Makefile,v 1.1 2006/05/19 23:24:07 andrew Exp $

COMMENT=	"a version of the board game Settlers of Catan written in Java"
COMMENT-web=	"web pages to make it easy for clients to connect to your jsettlers server"

DISTNAME=	jsettlers-1.0.6
PKGNAME-web=	${DISTNAME:S/-/-web-/}

MAINTAINER=	Andrew Fresh <andrew@mad-techies.org>

CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jsettlers/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:jre-*:devel/jdk/1.5

MULTI_PACKAGES=-web
SUBPACKAGE?=

NO_CONFIGURE=		Yes
NO_BUILD=		Yes

WWW_PREFIX=/var/www

.if ${SUBPACKAGE} == "-web"
  PREFIX=${WWW_PREFIX}
  RUN_DEPENDS=	:jsettlers-*:games/jsettlers
.endif

WWW_FILES=	web JSettlers.jar
DOC=		docs COPYING.txt README.txt VERSIONS.txt

do-install:
.for f in ${WWW_FILES}
	@cp -r ${WRKSRC}/${f} ${WRKINST}${WWW_PREFIX}/jsettlers
.endfor
	@cp -r ${WRKSRC}/docs/users ${WRKINST}${WWW_PREFIX}/jsettlers/users
	@cp ${WRKSRC}/JSettlers.jar ${PREFIX}/bin
	@cp ${WRKSRC}/JSettlersServer.jar ${PREFIX}/bin
.for f in ${DOC}
	@cp -r ${WRKSRC}/${f} ${PREFIX}/share/doc/jsettlers
.endfor

.include <bsd.port.mk>
