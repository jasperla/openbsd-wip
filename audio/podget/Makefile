# $OpenBSD$

COMMENT =		simple podcast aggregator

DISTNAME =		podget-0.6.15
#PKGNAME =		${DISTNAME}

CATEGORIES =		audio

HOMEPAGE =		http://podget.sourceforge.net

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=podget/}

RUN_DEPENDS =		net/wget \
			shells/bash \
			textproc/gsed

USE_GMAKE =		Yes

NO_BUILD =		Yes
NO_TEST =		Yes

DOCS =			COPYING Changelog INSTALL README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/podget
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/podget/scripts
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/podget
	${INSTALL_SCRIPT} ${WRKDIST}/podget ${PREFIX}/bin/podget
	${INSTALL_MAN} ${WRKDIST}/DOC/podget.7 ${PREFIX}/man/man7
        
.include <bsd.port.mk>
