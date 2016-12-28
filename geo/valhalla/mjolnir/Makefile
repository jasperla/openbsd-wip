# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		applications to create tiled routing data

VALHALLA_PROJECT =	mjolnir
OSMPBF_VER =		1.3.3

SHARED_LIBS +=  valhalla_mjolnir          0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_regex-mt boost_system boost_thread-mt c crypto
WANTLIB += curl freexl geos geos_c iconv idn intl lua5.2 lzma
WANTLIB += m nghttp2 prime_server proj protobuf pthread sodium
WANTLIB += spatialite sqlite3 ssl stdc++ valhalla_baldr valhalla_midgard
WANTLIB += valhalla_skadi xml2 z zmq

USE_GMAKE =		Yes

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
BUILD_DEPENDS +=	geo/osmpbf:patch
LIB_DEPENDS =		devel/boost \
			devel/protobuf \
			geo/geos \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			geo/valhalla/skadi \
			geo/spatialite/libspatialite
RUN_DEPENDS =		archivers/unzip \
			geo/spatialite/tools \
			textproc/jq

CONFIGURE_ENV =		LUA="${MODLUA_BIN}" \
			MODLUA_INCLUDE="${MODLUA_INCL_DIR}" \
			MODLUA_LIB="${MODLUA_LIB}"

pre-patch:
	@rmdir ${WRKDIST}/OSM-binary
	@ln -s ${WRKDIR}/geo/osmpbf/OSM-binary-"${OSMPBF_VER}" \
		${WRKDIST}/OSM-binary

.include <bsd.port.mk>
