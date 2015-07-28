# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		routing library base algorithms and data resource

VALHALLA_PROJECT =	baldr
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_baldr            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_serialization-mt
WANTLIB += boost_system boost_system-mt boost_thread-mt c m pthread
WANTLIB += stdc++ valhalla_midgard z

GH_COMMIT =		7197c53edd754abcd92ab6c5aa5fa83167d0afb4

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		devel/boost \
			geo/valhalla/midgard

.include <bsd.port.mk>
