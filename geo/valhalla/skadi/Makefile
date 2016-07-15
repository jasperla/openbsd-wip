# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		library to access digital elevation model data

VALHALLA_PROJECT =	skadi

SHARED_LIBS +=  valhalla_skadi            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt c crypto curl iconv idn
WANTLIB += intl m nghttp2 prime_server pthread sodium ssl valhalla_baldr
WANTLIB += valhalla_midgard z zmq

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
LIB_DEPENDS =		devel/boost \
			geo/gdal \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			net/prime_server

.include <bsd.port.mk>
