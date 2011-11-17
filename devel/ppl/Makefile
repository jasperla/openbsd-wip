# $OpenBSD$

COMMENT =		numerical abstraction library

V =			0.11.2
DISTNAME =		ppl-${V}

SHARED_LIBS  =		ppl	0.0 # 9.0
SHARED_LIBS +=		ppl_c	0.0 # 4.0
SHARED_LIBS +=		pwl	0.0 # 5.0

CATEGORIES =		devel

HOMEPAGE =		http://bugseng.com/products/ppl

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp gmpxx m stdc++

MASTER_SITES =		ftp://ftp.cs.unipr.it/pub/ppl/releases/${V}/

BUILD_DEPENDS =		devel/m4
LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-cc=${CC} \
			--with-cxx=${CXX} \
			--with-cflags="${CFLAGS}" \
			--with-cxxflags="${CXXFLAGS}"

.include <bsd.port.mk>
