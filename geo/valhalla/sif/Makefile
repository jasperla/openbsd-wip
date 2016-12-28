# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		costing model used in graph traversal and correlation

VALHALLA_PROJECT =	sif

SHARED_LIBS +=  valhalla_sif              0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt m pthread valhalla_baldr
WANTLIB += valhalla_midgard

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		geo/valhalla/baldr \
			geo/valhalla/midgard

.include <bsd.port.mk>
