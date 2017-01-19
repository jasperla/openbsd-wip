# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		benchmarks and test applications for valhalla

VALHALLA_PROJECT =	tools

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_regex-mt boost_system boost_thread-mt c crypto
WANTLIB += curl iconv idn intl m nghttp2 prime_server protobuf
WANTLIB += pthread sodium ssl valhalla_baldr valhalla_loki valhalla_meili
WANTLIB += valhalla_midgard valhalla_odin valhalla_sif valhalla_skadi
WANTLIB += valhalla_thor valhalla_tyr z zmq

MODULES =		gcc4 \
			lang/python \
			lang/lua
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.2
LIB_DEPENDS =		geo/valhalla/loki \
			geo/valhalla/meili \
			geo/valhalla/mjolnir \
			geo/valhalla/sif \
			geo/valhalla/skadi \
			geo/valhalla/thor \
			geo/valhalla/tyr

CONFIGURE_ENV =		PYTHON_VERSION=${MODPY_VERSION}

.include <bsd.port.mk>
