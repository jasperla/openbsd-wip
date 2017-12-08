# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	geographic routing engine

GH_ACCOUNT =	valhalla
GH_PROJECT =	valhalla
GH_TAGNAME =	2.2.6

SHARED_LIBS +=  valhalla                  0.0 # 0.0

CATEGORIES =	geo

HOMEPAGE =	https://mapzen.com/products/turn-by-turn/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_date_time-mt boost_filesystem boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_python boost_regex-mt
WANTLIB += boost_system boost_system-mt boost_thread-mt 
WANTLIB += bz2 c crypto curl czmq freexl geos geos_c
WANTLIB += iconv lzma m nghttp2 prime_server proj protobuf pthread
WANTLIB += python2.7 sodium spatialite sqlite3 ssl stdc++ util
WANTLIB += xml2 z zmq ${MODLUA_WANTLIB}

MODULES =		gcc4 \
			lang/lua \
			lang/python
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
MODLUA_VERSION =	5.3
BUILD_DEPENDS =		editors/vim,-main \
			geo/osmlr-tile-spec \
			geo/osmpbf:patch \
			textproc/rapidjson
RUN_DEPENDS =		archivers/unzip \
			geo/spatialite/tools \
			sysutils/coreutils \
			sysutils/parallel \
			textproc/jq \
			net/wget
LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/protobuf \
			geo/spatialite/libspatialite \
			net/prime_server

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		PYTHON_VERSION=${MODPY_VERSION}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

OSMLR_VER =		87b648b94a178f5cb19346c48c331a03340d76b3
OSMPBF_VER =		1.3.3

post-extract:
	cp ${LOCALBASE}/share/osmlr-tile-spec/*.proto ${WRKSRC}/OSMLR/

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh

post-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/valhalla_build_elevation
# XXX this file should be generated at configure time,
# but OpenBSD doesn't have localedef
	mkdir ${WRKSRC}/genfiles
	cp ${FILESDIR}/locales.h ${WRKSRC}/genfiles/locales.h

pre-patch:
	@rmdir ${WRKDIST}/OSM-binary
	@ln -s ${WRKDIR}/geo/osmpbf/OSM-binary-"${OSMPBF_VER}" \
		${WRKDIST}/OSM-binary

.include <bsd.port.mk>
