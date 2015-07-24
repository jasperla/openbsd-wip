# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		associate location info to an underlying graph

VALHALLA_PROJECT =	loki
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_loki             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_serialization-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c crypto curl freexl geos geos_c iconv
WANTLIB += idn intl lua5.2 lzma m prime_server proj protobuf pthread
WANTLIB += sodium spatialite sqlite3 ssl stdc++ valhalla_baldr
WANTLIB += valhalla_midgard valhalla_mjolnir valhalla_sif xml2
WANTLIB += z zmq

GH_COMMIT =		d6ebd7db6876093ab973232bf94539034b22cc75

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
LIB_DEPENDS =		devel/boost \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			geo/valhalla/mjolnir \
			geo/valhalla/sif \
			net/prime_server \
			net/zeromq

CONFIGURE_ENV =		LUA="${MODLUA_BIN}" \
			MODLUA_INCLUDE="${MODLUA_INCL_DIR}" \
			MODLUA_LIB="${MODLUA_LIB}"

.include <bsd.port.mk>
