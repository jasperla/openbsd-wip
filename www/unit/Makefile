# $OpenBSD$

COMMENT =			Dynamic web and application server

V =					1.1
DISTNAME =			unit-${V}

CATEGORIES =		www

HOMEPAGE =			https://unit.nginx.org/

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://unit.nginx.org/download/

FLAVORS =			perl go python ruby
FLAVOR ?=

CONFIGURE_STYLE = 	simple

.if ${FLAVOR:Mgo}
RUN_DEPENDS += lang/go
.elif ${FLAVOR:Mpython}
MODULES += lang/python
.elif ${FLAVOR:Mruby}
MODULES += lang/ruby
.endif

post-configure:
.if ${FLAVOR:Mperl}
	cd ${WRKBUILD} && ./configure perl
.elif ${FLAVOR:Mgo}
	cd ${WRKBUILD} && ./configure go
.elif ${FLAVOR:Mpython}
	cd ${WRKBUILD} && ./configure python --config=python${MODPY_VERSION}-config
.elif ${FLAVOR:Mruby}
	cd ${WRKBUILD} && ./configure ruby --ruby=${MODRUBY_BINREV}
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
