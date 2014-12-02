# $OpenBSD$

COMMENT =		simple, portable library for handling UTF-8 strings

VERSION =		2.3.4
DISTNAME =		utf8_v${VERSION:S/./_/g}
PKGNAME =		utfcpp-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://utfcpp.sourceforge.net/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# BSD?
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=utfcpp/}

EXTRACT_SUFX =		.zip

NO_TEST =		Yes

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes

FILES =    	include/utf8.h \
		include/utf8/checked.h \
		include/utf8/core.h \
		include/utf8/unchecked.h

do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/include
		${INSTALL_DATA_DIR} ${PREFIX}/include/utf8
		${INSTALL_DATA} ${WRKDIR}/source/*.* ${PREFIX}/include
		${INSTALL_DATA} ${WRKDIR}/source/utf8/*.* ${PREFIX}/include/utf8/

.include <bsd.port.mk>
