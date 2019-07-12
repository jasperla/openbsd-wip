# $OpenBSD$

COMMENT =	integer set library
DISTNAME =	isl-0.21
CATEGORIES =	devel

SHARED_LIBS +=	isl                       0.0 # 21.0

HOMEPAGE =	http://isl.gforge.inria.fr/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += gmp

MASTER_SITES =	http://isl.gforge.inria.fr/

LIB_DEPENDS =	devel/gmp

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gmp-prefix="${LOCALBASE}"

.include <bsd.port.mk>
