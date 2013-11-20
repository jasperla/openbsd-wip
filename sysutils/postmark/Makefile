# $OpenBSD: Makefile $

COMMENT =		NFS mail server workload

DISTNAME =		postmark-1.5
PKGNAME =		${DISTNAME}

CATEGORIES =		sysutils benchmarks

HOMEPAGE =		http://fsbench.filesystems.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://fsbench.filesystems.org/bench/

DISTFILES =		postmark-1_5.c	
EXTRACT_ONLY =

NO_BUILD =		Yes
NO_TEST =		Yes

INST_DIR = 		${PREFIX}/bin/

pre-install:
		cp /usr/ports/distfiles/postmark-1_5.c	${WRKSRC}

do-install:
		cd ${WRKSRC} && gcc postmark-1_5.c -o postmark
		${INSTALL_PROGRAM}	${WRKSRC}/postmark ${PREFIX}/bin/

.include <bsd.port.mk>
