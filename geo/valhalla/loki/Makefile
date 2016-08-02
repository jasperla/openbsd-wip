# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		associate location info to an underlying graph

VALHALLA_PROJECT =	loki

SHARED_LIBS +=  valhalla_loki             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt c crypto curl iconv idn
WANTLIB += intl m nghttp2 prime_server pthread sodium ssl valhalla_baldr
WANTLIB += valhalla_midgard valhalla_sif z zmq

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
LIB_DEPENDS =		devel/boost \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			geo/valhalla/sif \
			net/prime_server \
			net/zeromq

CONFIGURE_ENV =		LUA="${MODLUA_BIN}" \
			MODLUA_INCLUDE="${MODLUA_INCL_DIR}" \
			MODLUA_LIB="${MODLUA_LIB}"

.include <bsd.port.mk>
