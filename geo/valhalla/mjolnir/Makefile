# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		applications to create tiled routing data

VALHALLA_PROJECT =	mjolnir
VALHALLA_VERSION =	0.0.0
OSMPBF_VER =		1.3.3

SHARED_LIBS +=  valhalla_mjolnir          0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_serialization-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c freexl geos geos_c iconv lzma m
WANTLIB += proj protobuf pthread spatialite sqlite3 stdc++ valhalla_baldr
WANTLIB += valhalla_midgard xml2 z ${MODLUA_WANTLIB}

GH_COMMIT =		b87d0b511e73767c08b3f0424183c97511b71bb5

USE_GMAKE =		Yes

MODULES =		gcc4 \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
BUILD_DEPENDS =		geo/osmpbf:patch
LIB_DEPENDS =		devel/boost \
			devel/protobuf \
			geo/valhalla/baldr \
			geo/geos \
			geo/valhalla/midgard \
			geo/spatialite/libspatialite

CONFIGURE_ENV =		LUA="${MODLUA_BIN}" \
			MODLUA_INCLUDE="${MODLUA_INCL_DIR}" \
			MODLUA_LIB="${MODLUA_LIB}"

pre-patch:
	@rmdir ${WRKDIST}/OSM-binary
	@ln -s ${WRKDIR}/geo/osmpbf/OSM-binary-"${OSMPBF_VER}" \
		${WRKDIST}/OSM-binary

.include <bsd.port.mk>
