# $OpenBSD$

COMMENT =		the picolisp system

V =			17.12
DISTNAME =		picoLisp-$V

CATEGORIES =		lang

HOMEPAGE =		https://picolisp.com/wiki/?home

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

EXTRACT_SUFX =		.tgz
WRKDIST =		${WRKDIR}/picoLisp/src64

MODULES =		java
MODJAVA_VER =		1.7+
MODJAVA_JRERUN =        yes

MAKE_FLAGS =		PATH=${PATH}:${JAVA_HOME}/bin

RUN_DEPENDS =           java/javaPathHelper

# BSD?
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://software-lab.de/

USE_GMAKE =		Yes

NO_TEST =		Yes

SUBST_VARS +=           LOCALBASE

pre-configure:
	${SUBST_CMD} ${WRKDIST}/../bin/pil

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/picolisp
	${INSTALL_DATA_DIR} ${PREFIX}/lib/picolisp/lib
	${INSTALL_DATA} ${WRKDIST}/../*.l ${PREFIX}/lib/picolisp/
	${INSTALL_DATA} ${WRKDIST}/../lib/*.l ${PREFIX}/lib/picolisp/lib/
	${INSTALL_PROGRAM} ${WRKDIST}/../bin/picolisp ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKDIST}/../bin/pil ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKDIST}/../man/man1/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
