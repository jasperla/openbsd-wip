# $OpenBSD$

V =		2.0
COMMENT =	theorem prover for first-order logic
DISTNAME =	e-${V}{E}
PKGNAME =	e-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	math

HOMEPAGE =	https://wwwlehre.dhbw-stuttgart.de/~sschulz/E/E.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =	https://wwwlehre.dhbw-stuttgart.de/~sschulz/WORK/E_DOWNLOAD/V_${V}/

CONFIGURE_STYLE =	simple

FAKE_FLAGS =	EXECPATH="${DESTDIR}${PREFIX}/bin" \
		MANPATH="${DESTDIR}${PREFIX}/man/man1"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/E

.include <bsd.port.mk>
