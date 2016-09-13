# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		map matching in C++

VALHALLA_PROJECT =	meili

SHARED_LIBS +=  valhalla_meili            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_regex-mt boost_system boost_thread-mt c crypto
WANTLIB += curl iconv idn intl m nghttp2 prime_server pthread
WANTLIB += sodium ssl valhalla_baldr valhalla_midgard valhalla_sif
WANTLIB += z zmq

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODGCC4_VERSION =	4.9
BUILD_DEPENDS =		textproc/rapidjson
LIB_DEPENDS =		devel/boost \
			devel/libidn \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			geo/valhalla/sif \
			net/curl \
			net/prime_server \
			net/zeromq \
			security/libsodium \
			textproc/intltool \
			www/nghttp2

.include <bsd.port.mk>
