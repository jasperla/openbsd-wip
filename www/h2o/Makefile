# $OpenBSD $

COMMENT =	Web server library
DISTNAME =	v${V}
PKGNAME =       h2o-${V}
V =             2.1.0

SHARED_LIBS =	h2o-evloop      0.0

CATEGORIES =	www

HOMEPAGE =	http://h2o.examp1e.net

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/h2o/h2o/archive/

MODULES =		devel/cmake gcc4
MODGCC4_LANGS =         c c++
MODGCC4_ARCHS =         *

WRKDIST =               ${WRKDIR}/${PKGNAME}

CONFIGURE_ARGS =	-DWITH_BUNDLED_SSL=OFF \
			-DBUILD_SHARED_LIBS=ON \
			-DWITH_MRUBY=OFF \
			-DCMAKE_INSTALL_SYSCONFDIR=/etc/h2o

NO_TEST =		No

post-install:
			@mkdir /etc/h2o
			${INSTALL_DATA} ${FILESDIR}/h2o.conf /etc/h2o

.include <bsd.port.mk>
