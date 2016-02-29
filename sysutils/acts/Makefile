# $OpenBSD$
COMMENT =		another calendar-based tarsnap script
V =			1.3b1
DISTNAME =		acts-${V}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/alexjurkiewicz/acts
MAINTAINER =		Josh Grosse <josh@jggimi.homeip.net>

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		alexjurkiewicz
GH_PROJECT =		acts
GH_TAGNAME =		${V}

NO_BUILD =		Yes
RUN_DEPENDS =		sysutils/tarsnap

D =	  		${PREFIX}/share/doc/acts/
E =	  		${PREFIX}/share/examples/acts/

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/acts ${PREFIX}/libexec
	${INSTALL_DATA_DIR} $E
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/acts-pre.sh $E
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/acts-post.sh $E
	${INSTALL_DATA} ${WRKSRC}/acts.conf.sample ${E}/acts.conf
	${INSTALL_DATA_DIR} $D
	${INSTALL_DATA} ${WRKSRC}/README.md $D


.include <bsd.port.mk>
