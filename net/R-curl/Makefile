# $OpenBSD$


COMMENT =			modern and flexible web client for R

V =				0.9.5
DISTNAME =			curl_${V}
PKGNAME =			R-${DISTNAME:S/_/-/}
CATEGORIES =			net

HOMEPAGE =			https://cran.r-project.org/package=curl

MAINTAINER =			Jasper Lievisse Adriaase <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			https://cran.r-project.org/src/contrib/

WRKDIST =			${WRKDIR}/curl/

WANTLIB =			lib/R/lib/R curl
LIB_DEPENDS =			math/R \
				net/curl

# not really, but there's no Makefile to open
NO_BUILD =			Yes

# Bad interaction with ccache and systrace
USE_CCACHE =			No

R_LIBDIR =			${PREFIX}/lib/R/library
SUBST_VARS +=			DESTDIR R_LIBDIR WRKSRC

post-extract:
	sed -i 's,^#!/bin/bash,#!/bin/sh,' ${WRKSRC}/configure
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/install.R ${WRKDIR}/install.R

do-install:
	${INSTALL_DATA_DIR} ${R_LIBDIR}
	Rscript ${WRKDIR}/install.R

.include <bsd.port.mk>
