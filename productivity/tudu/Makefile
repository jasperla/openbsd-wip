# $OpenBSD: Makefile,v 1.1.1.1 2016/12/13 09:42:19 fcambus Exp $

COMMENT =	comand line interface to manage hierarchical todos

DISTNAME =	tudu-0.10

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${LIBCXX}

MASTER_SITES =	${HOMEPAGE}

CONFIGURE_STYLE = simple

CONFIGURE_ARGS = --sysconfdir=${SYSCONFDIR} \
		 --mandir=${PREFIX}/man

FAKE_FLAGS =	SYSCONFDIR=${TRUEPREFIX}/share/examples/tudu

NO_TEST =	Yes

.include <bsd.port.mk>
