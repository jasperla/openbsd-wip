# $OpenBSD $

COMMENT =		system call fuzz tester
DISTNAME =		trinity-1.1
#DISTNAME =		trinity-git-snapshot
REVISION =	    1

ONLY_FOR_ARCHS = 	arm amd64 i386 mips powerpc sparc64 

EXTRACT_SUFX = 		.tgz
#EXTRACT_SUFX = 	.tar.gz

CATEGORIES =		devel misc
HOMEPAGE =			http://codemonkey.org.uk/projects/trinity/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES            = ${HOMEPAGE}

BUILD_DEPENDS=    shells/bash

WANTLIB += c m stdc++

USE_GMAKE =  			Yes
#PREFIX=/usr/local/

#WRKSRC = ${WRKDIR}/trinity-2013-04-28/

pre-build:
		cd ${WRKSRC} && bash ./configure.sh

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/trinity/
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/trinity/Documentation
		${INSTALL_DATA} ${WRKDIST}/{README,COPYING} ${PREFIX}/share/doc/trinity/
		${INSTALL_DATA} ${WRKDIST}/Documentation/* ${PREFIX}/share/doc/trinity/Documentation/
		${INSTALL_DATA_DIR} ${PREFIX}/share/trinity/
		${INSTALL_SCRIPT} ${WRKSRC}/test-*.sh ${PREFIX}/share/trinity/

.include <bsd.port.mk>
