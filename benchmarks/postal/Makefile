# $OpenBSD$

COMMENT =		SMTP benchmark and stress tool

DISTNAME =		postal-0.72
#PKGNAME =		${DISTNAME}

CATEGORIES =		benchmarks devel

HOMEPAGE =		http://doc.coker.com.au/projects/postal/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c m pthread stdc++

MASTER_SITES =		http://www.coker.com.au/postal/
EXTRACT_SUFX =		.tgz
CFLAGS +=		 -Wno-long-long

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-openssl

.include <bsd.port.mk>
