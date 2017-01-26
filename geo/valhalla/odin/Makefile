# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		open directions and improved narrative

VALHALLA_PROJECT =	odin

SHARED_LIBS +=  valhalla_odin             0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt crypto curl
WANTLIB += m nghttp2 prime_server protobuf pthread sodium
WANTLIB += ssl valhalla_baldr valhalla_midgard z zmq

USE_GMAKE =		Yes

MODULES =		gcc4
BUILD_DEPENDS +=	editors/vim,-main \
			geo/osmpbf:patch \
			textproc/jq
LIB_DEPENDS =		devel/boost \
			devel/protobuf>=3.1.0 \
			geo/valhalla/baldr \
			geo/valhalla/midgard \
			net/prime_server \
			net/zeromq
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*

# XXX this file should be generated at build time,
# but OpenBSD doesn't have localedef
post-configure:
	cp ${FILESDIR}/locales.h ${WRKSRC}/src/odin/

.include <bsd.port.mk>
