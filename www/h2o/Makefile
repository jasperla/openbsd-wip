# $OpenBSD $

COMMENT =	optimized HTTP server with support for HTTP/1.x and HTTP/2

SHARED_LIBS =	h2o-evloop      0.0

CATEGORIES =	www

GH_ACCOUNT =    h2o
GH_PROJECT =    h2o
GH_TAGNAME =    v2.2.2

HOMEPAGE =	https://h2o.examp1e.net/

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			gcc4 \
			lang/ruby
MODGCC4_LANGS =         c c++
MODGCC4_ARCHS =         *

SUBST_VARS =            RUBY

BUILD_DEPENDS =         devel/bison \
			lang/ruby/${MODRUBY_REV}

CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR}/h2o \
			-DWITH_MRUBY=ON \
			-DWITH_BUNDLED_SSL=OFF \
			-DRUBYEXE=${RUBY} \
			-DBUILD_SHARED_LIBS=ON

USE_NINJA =             No

post-install:
	mkdir -p ${PREFIX}/share/examples/h2o
	${INSTALL_DATA} ${FILESDIR}/h2o.conf ${PREFIX}/share/examples/h2o

.include <bsd.port.mk>
