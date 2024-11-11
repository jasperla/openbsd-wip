COMMENT =	tool to get status over multiple Git repositories

VERSION =	2.3

SITES =         https://github.com/fboender/multi-git-status/
DISTFILES =	mgitstatus-{archive/refs/tags/}${VERSION}.tar.gz

DISTNAME =	mgitstatus-${VERSION}

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

HOMEPAGE =	https://github.com/fboender/multi-git-status

# MIT
PERMIT_PACKAGE =	Yes

# mgitstatus = script shell
NO_BUILD =	Yes
NO_TEST =	Yes

WRKSRC =	${WRKDIR}/multi-git-status-${VERSION}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mgitstatus ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/mgitstatus.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
