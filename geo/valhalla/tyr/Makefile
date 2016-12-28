# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		service layer to take locations and return routes

VALHALLA_PROJECT =	tyr

SHARED_LIBS +=  valhalla_tyr              0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt crypto curl
WANTLIB += m nghttp2 prime_server protobuf pthread sodium
WANTLIB += ssl valhalla_baldr valhalla_midgard valhalla_odin z
WANTLIB += zmq

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
LIB_DEPENDS =		geo/valhalla/baldr \
			geo/valhalla/midgard \
			geo/valhalla/odin

.include <bsd.port.mk>
