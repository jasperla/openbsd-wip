# $OpenBSD: Makefile $

COMMENT =		file system exerciser

DISTNAME =		fsx-0.1
PKGNAME =		${DISTNAME}

CATEGORIES =	sysutils devel

HOMEPAGE =		http://codemonkey.org.uk/projects/fsx/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://codemonkey.org.uk/projects/fsx/

DISTFILES =		dfly-fsx.c
EXTRACT_ONLY =

NO_BUILD =		Yes
NO_TEST =		Yes

INST_DIR = 		${PREFIX}/bin/

pre-install:
		cp /usr/ports/distfiles/dfly-fsx.c ${WRKSRC}

do-install:
		cd ${WRKSRC} && gcc dfly-fsx.c -o fsx
		${INSTALL_PROGRAM}	${WRKSRC}/fsx ${PREFIX}/bin/

.include <bsd.port.mk>
