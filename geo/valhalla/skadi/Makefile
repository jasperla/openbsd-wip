# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		library to access digital elevation model data

VALHALLA_PROJECT =	skadi

SHARED_LIBS +=  valhalla_skadi            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt crypto curl czmq
WANTLIB += m nghttp2 prime_server pthread sodium ssl valhalla_baldr
WANTLIB += valhalla_midgard z zmq

MODULES =		gcc4 \
			lang/python
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODPY_BUILDDEP =	No
LIB_DEPENDS =		devel/boost \
			geo/gdal \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			net/prime_server
RUN_DEPENDS =		sysutils/coreutils \
			sysutils/parallel

SUBST_VARS +=		${MODPYTHON_BIN}

post-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/valhalla_build_elevation

.include <bsd.port.mk>
