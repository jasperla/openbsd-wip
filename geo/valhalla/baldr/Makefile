# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		routing library base algorithms and data resource

VALHALLA_PROJECT =	baldr

SHARED_LIBS +=  valhalla_baldr            0.0 # 0.0

WANTLIB += boost_date_time-mt boost_filesystem boost_regex-mt
WANTLIB += boost_system boost_thread-mt m pthread valhalla_midgard

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
MODGCC4_VERSION =	4.9
BUILD_DEPENDS +=	editors/vim,-main
LIB_DEPENDS =		devel/boost \
			geo/valhalla/midgard

.include <bsd.port.mk>
