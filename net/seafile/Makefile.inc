# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

VERSION ?= 		3.0.2
V = 			${VERSION:S/-server//:S/-testing//}
DISTNAME = 		${NAME}-${V}

CATEGORIES =		net net/seafile

HOMEPAGE =		http://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/haiwen/${NAME}/archive/
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{v${VERSION}${EXTRACT_SUFX}}

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)

WRKDIST = 		${WRKDIR}/${NAME}-${VERSION}

#.include <bsd.port.mk>
