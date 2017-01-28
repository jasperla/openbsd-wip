# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		tiled hierarchical open routing

VALHALLA_PROJECT =	thor

SHARED_LIBS +=  valhalla_thor             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_regex-mt boost_system boost_thread-mt c crypto
WANTLIB += curl iconv intl m nghttp2 prime_server protobuf
WANTLIB += pthread sodium ssl valhalla_baldr valhalla_meili
WANTLIB += valhalla_midgard valhalla_odin valhalla_sif z zmq

MODULES =		gcc4 \
			lang/lua
MODLUA_VERSION =	5.2
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		geo/valhalla/baldr \
			geo/valhalla/meili \
			geo/valhalla/midgard \
			geo/valhalla/odin \
			geo/valhalla/sif

.include <bsd.port.mk>
