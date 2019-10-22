# $OpenBSD: Makefile.template,v 1.85 2019/09/09 19:19:05 kmos Exp $

COMMENT =	exposes an OS as a high-performance relational database

V =		4.0.2
DISTNAME =	osquery-${V}
#SHARED_LIBS =	???	0.0

CATEGORIES =	sysutils

HOMEPAGE =	https://osquery.io/

# Apache-2.0 OR GPL-2.0-only
PERMIT_PACKAGE =	Yes

#WANTLIB =		???

MASTER_SITES =		https://deftly.net/dist/

MODULES =		devel/cmake


BUILD_DEPENDS =		textproc/rapidjson
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

# MAKE_FLAGS =		OSQUERY_VERSION=${V}
# MAKE_ENV =		OSQUERY_VERSION=${V}
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

CONFIGURE_ARGS =	-DOSQUERY_VERSION=${V}
.include <bsd.port.mk>
