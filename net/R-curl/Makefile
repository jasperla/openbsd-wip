# $OpenBSD$

SHARED_ONLY =			Yes

COMMENT =			modern and flexible web client for R

V =				0.9.5
DISTNAME =			curl_${V}
PKGNAME =			R-${DISTNAME:S/_/-/}
CATEGORIES =			net

HOMEPAGE =			https://cran.r-project.org/web/packages/curl/

MAINTAINER =			Jasper Lievisse Adriaase <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			https://cran.r-project.org/src/contrib/

WRKDIST =			${WRKDIR}/curl/

WANTLIB =			curl
BUILD_DEPENDS =			math/R
LIB_DEPENDS =			net/curl
RUN_DEPENDS =			math/R

# not really, but there's no Makefile to open
NO_BUILD =			Yes

# Bad interaction with ccache and systrace
USE_CCACHE =			No

R_LIBDIR =			${PREFIX}/lib/R/library
SUBST_VARS +=			DESTDIR R_LIBDIR WRKSRC

# File(s) we modified and need to regen the checksum for
UPDATED_FILES =			configure src/nslookup.c

post-extract:
	sed -i 's,^#!/bin/bash,#!/bin/sh,' ${WRKSRC}/configure
.for f in ${UPDATED_FILES}
	cd ${WRKSRC} && \
		sed -i "s,.* \(\*$f\)$$,`md5 -q $f` \1," MD5
.endfor
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/install.R ${WRKDIR}/install.R

do-install:
	${INSTALL_DATA_DIR} ${R_LIBDIR}
	Rscript ${WRKDIR}/install.R

.include <bsd.port.mk>
