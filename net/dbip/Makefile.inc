# $OpenBSD$

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE =	https://db-ip.com/db/lite.php

# CC BY 4.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://download.db-ip.com/free/
EXTRACT_SUFX =	.gz

WRKDIST =	${WRKDIR}

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbip
	${INSTALL_DATA} ${WRKDIST}/*.mmdb ${PREFIX}/share/examples/dbip
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/dbip
