# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		tiled hierarchical open routing

VALHALLA_PROJECT =	thor
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_thor             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_serialization-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c crypto curl freexl geos geos_c iconv
WANTLIB += idn intl lzma m prime_server proj protobuf pthread
WANTLIB += sodium spatialite sqlite3 ssl stdc++ valhalla_baldr
WANTLIB += valhalla_loki valhalla_midgard valhalla_mjolnir valhalla_odin
WANTLIB += valhalla_sif xml2 z zmq ${MODLUA_WANTLIB}

GH_COMMIT =		2affaa4060d5bf8a1242e305f33e00bed862bdcc

MODULES =		gcc4 \
			lang/lua
MODLUA_VERSION =	5.2
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		geo/valhalla/baldr \
			geo/valhalla/loki \
			geo/valhalla/odin

.include <bsd.port.mk>
