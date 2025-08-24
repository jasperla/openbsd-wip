V =		0.6
COMMENT =	programmer's calculator
DISTNAME =	pc-${V}
CATEGORIES =	math

HOMEPAGE =	https://git.sr.ht/~ft/pc
MAINTAINER =	Saeed Mahjoob <saeed@cloud9p.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

SITES =		https://git.sr.ht/~ft/pc/archive/

DISTFILES =	pc-{}${V}${EXTRACT_SUFX}
NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/pc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/pc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
