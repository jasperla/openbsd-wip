# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		open directions and improved narrative

VALHALLA_PROJECT =	odin
VALHALLA_VERSION =	0.0.0

SHARED_LIBS +=  valhalla_odin             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_serialization-mt
WANTLIB += boost_system boost_system-mt boost_thread-mt c crypto
WANTLIB += curl iconv idn intl m prime_server protobuf pthread
WANTLIB += sodium ssl stdc++ valhalla_baldr valhalla_midgard z
WANTLIB += zmq

USE_GMAKE =		Yes

GH_COMMIT =		a1d1668853bacb20f8f479716c3610190dd2c13b

MODULES =		gcc4
BUILD_DEPENDS =		geo/osmpbf:patch
LIB_DEPENDS =		devel/boost \
			devel/protobuf \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			net/prime_server \
			net/zeromq
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

.include <bsd.port.mk>
