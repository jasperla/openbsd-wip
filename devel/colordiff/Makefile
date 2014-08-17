# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		colourised diff tool
DISTNAME =		colordiff-1.0.13
CATEGORIES =		devel
HOMEPAGE =		http://www.colordiff.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		perl

# No need, docs come pre-rendered.
NO_BUILD =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

EXAMPLES_DIR =		${PREFIX}/share/examples/colordiff
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKBUILD}/colordiffrc* ${EXAMPLES_DIR}

.include <bsd.port.mk>
