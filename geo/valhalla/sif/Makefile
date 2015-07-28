# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		costing model used in graph traversal and correlation

VALHALLA_PROJECT =	sif
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_sif              0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_serialization-mt
WANTLIB += boost_system boost_system-mt boost_thread-mt m pthread
WANTLIB += stdc++ valhalla_baldr valhalla_midgard

GH_COMMIT =		0dde18766900ab7218be7cdc7774f930ddfb32b6

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		geo/valhalla/baldr

.include <bsd.port.mk>
