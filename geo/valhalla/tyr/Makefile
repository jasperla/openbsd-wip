# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		service layer to take locations and return routes

VALHALLA_PROJECT =	tyr
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_tyr              0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_serialization-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c crypto curl freexl geos geos_c iconv
WANTLIB += idn intl lzma m prime_server proj protobuf pthread
WANTLIB += sodium spatialite sqlite3 ssl stdc++ valhalla_baldr
WANTLIB += valhalla_loki valhalla_midgard valhalla_mjolnir valhalla_odin
WANTLIB += valhalla_sif valhalla_thor xml2 z zmq ${MODLUA_WANTLIB}

GH_COMMIT =		367f7bb827c4550bfcc86ba9d313a6d1b39bb489

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
LIB_DEPENDS =		geo/valhalla/thor

.include <bsd.port.mk>
