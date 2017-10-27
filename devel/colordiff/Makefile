# $OpenBSD: Makefile,v 1.5 2015/04/29 12:03:20 ajacoutot Exp $

COMMENT =		colorized diff tool
DISTNAME =		colordiff-1.0.18
CATEGORIES =		devel
HOMEPAGE =		http://www.colordiff.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		perl

# No need, docs come pre-rendered.
NO_BUILD =		Yes
NO_TEST =		Yes

MAKE_ENV +=		INSTALL_DIR=${PREFIX}/bin \
			MAN_DIR=${PREFIX}/man/man1 \
			ETC_DIR=${SYSCONFDIR}

EXAMPLES_DIR =		${PREFIX}/share/examples/colordiff
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKBUILD}/colordiffrc* ${EXAMPLES_DIR}

.include <bsd.port.mk>
