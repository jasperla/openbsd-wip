# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		library to access digital elevation model data

VALHALLA_PROJECT =	skadi
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_skadi            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_serialization-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c crypto curl expat freexl gdal geos
WANTLIB += geos_c geotiff gif iconv idn intl jasper jpeg json-c
WANTLIB += lzma m openjp2 pcre png pq prime_server proj pthread
WANTLIB += sodium spatialite sqlite3 ssl stdc++ tiff valhalla_baldr
WANTLIB += valhalla_midgard xml2 z zmq

GH_COMMIT =		34b6a161789341096bafccde9e556adfa6a8f315

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		devel/boost \
			geo/gdal \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			net/prime_server

.include <bsd.port.mk>
