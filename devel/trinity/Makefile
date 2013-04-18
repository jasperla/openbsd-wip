# $OpenBSD $

COMMENT =		system call fuzz tester
DISTNAME =		trinity-1.1

ONLY_FOR_ARCHS = 	arm amd64 i386 mips powerpc sparc64 

EXTRACT_SUFX = 		.tgz

CATEGORIES =		devel misc
HOMEPAGE =			http://codemonkey.org.uk/projects/trinity/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES            = ${HOMEPAGE}

WANTLIB += c m stdc++

USE_GMAKE =  			Yes
PREFIX=/usr/local/

pre-build:
		cd ${WRKSRC} && bash ./configure.sh

.include <bsd.port.mk>
