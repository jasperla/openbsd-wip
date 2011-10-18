# $OpenBSD: Makefile,v 1.1.1.1 2010/11/19 09:01:12 shadchin Exp $

COMMENT =		computing the convex hull

VERSION =		2011.1
DISTNAME =		qhull-${VERSION}

SHARED_LIBS =		qhull6		0.0 # 6.2

CATEGORIES =		math

HOMEPAGE =		http://www.qhull.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${HOMEPAGE}download/
DISTFILES =		${DISTNAME}-src${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

NO_REGRESS =		Yes

CFLAGS +=		-fno-strict-aliasing
CONFIGURE_ARGS +=	-D DOC_INSTALL_DIR=${PREFIX}/share/doc/qhull

.include <bsd.port.mk>
