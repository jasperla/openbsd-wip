COMMENT =		Dynamic DNS client for Yandex Cloud
DIST_TUPLE =		codeberg	kn	yc-dyndns	0.1	.
CATEGORIES =		net

MAINTAINER =		Klemens Nanni <kn@opensd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# uses pledge()
RUN_DEPENDS =		devel/py-openbsd \
			net/py-yandexcloud \
			sysutils/py-psutil

NO_BUILD =		Yes

WRKDIST =		${WRKDIR}/yc-dyndns

PROG =			yc-dyndns
MODPY_ADJ_FILES =	${PROG}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PROG}   ${PREFIX}/bin/
	${INSTALL_MAN}    ${WRKSRC}/${PROG}.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
