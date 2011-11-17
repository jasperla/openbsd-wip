# $OpenBSD$

COMMENT =		chunky loop generator

DISTNAME =		cloog-ppl-0.15.11

SHARED_LIBS =		cloog	0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.cloog.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp gmpxx ppl ppl_c pwl

MASTER_SITES =		${MASTER_SITE_GCC:=infrastructure/}

LIB_DEPENDS =		devel/gmp \
			devel/ppl

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-gmp="${LOCALBASE}" \
			--with-ppl="${LOCALBASE}"

.include <bsd.port.mk>
