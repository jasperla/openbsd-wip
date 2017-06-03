# $OpenBSD $

COMMENT =	optimized HTTP server with support for HTTP/1.x and HTTP/2

SHARED_LIBS =	h2o-evloop      0.0
SHARED_LIBS +=	h2o      	0.0

CATEGORIES =	www

GH_ACCOUNT =    h2o
GH_PROJECT =    h2o
GH_TAGNAME =    v2.2.2

HOMEPAGE =	https://h2o.examp1e.net/

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			lang/ruby
COMPILER =              gcc4 # uses thread-local storage

SUBST_VARS =            RUBY

BUILD_DEPENDS =         devel/bison \
			devel/automake/${AUTOMAKE_VER} \
			devel/autoconf/${AUTOCONF_VER}

LIB_DEPENDS =           devel/libuv
WANTLIB +=              c crypto ssl m pthread z

MAKE_ENV +=             CC=egcc \
			CXX=eg++

AUTOCONF_VER =          2.69
AUTOMAKE_VER =          1.12

CONFIGURE_ENV =		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}/h2o \
			-DWITH_MRUBY=ON \
			-DWITH_BUNDLED_SSL=OFF \
			-DRUBYEXE=${RUBY} \
			-DEXTRA_LIBRARIES=OFF \
			-DBUILD_SHARED_LIBS=ON

USE_NINJA =             No # mruby is not built properly

post-install:
	mkdir -p ${PREFIX}/share/examples/h2o
	${INSTALL_DATA} ${FILESDIR}/h2o.conf ${PREFIX}/share/examples/h2o

.include <bsd.port.mk>
