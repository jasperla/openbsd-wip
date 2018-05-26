# $OpenBSD$

COMMENT =			Dynamic web and application server
COMMENT-main =		${COMMENT}
COMMENT-perl =		Perl support
COMMENT-go =	Golang support
COMMENT-python3 =	Python support
COMMENT-ruby24 =	Ruby support

V =					1.1
DISTNAME =			unit-${V}

CATEGORIES =		www

HOMEPAGE =			https://unit.nginx.org/

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://unit.nginx.org/download/

FLAVORS =			perl go python3 ruby24
FLAVOR ?=

CONFIGURE_STYLE = 	simple

WANTLIB-main =
WANTLIB-perl =
WANTLIB-go =
WANTLIB-python3 =
WANTLIB-ruby24 =
UNIT_MODULE =

.if ${FLAVOR:Mperl}
RUN_DEPENDS-perl = www/unit,-main
UNIT_MODULE = perl.unit.so
.elif ${FLAVOR:Mgo}
RUN_DEPENDS-go = www/unit,-main \
				 lang/go
.elif ${FLAVOR:Mpython3}
RUN_DEPENDS-python3 = www/unit,-main
MODULES = lang/python
UNIT_MODULE = python${MODPY_VERSION}.unit.so
.elif ${FLAVOR:Mruby24}
RUN_DEPENDS-ruby24 = www/unit,-main
MODULES = lang/ruby
UNIT_MODULE = ruby${MODRUBY_BINREV}.unit.so
.endif

post-configure:
.if ${FLAVOR:Mperl}
	cd ${WRKBUILD} && ./configure perl
.elif ${FLAVOR:Mgo}
	cd ${WRKBUILD} && ./configure go --go-path=${LOCALBASE}/lib
.elif ${FLAVOR:Mpython3}
	cd ${WRKBUILD} && ./configure python --config=python${MODPY_VERSION}-config
.elif ${FLAVOR:Mruby24}
	cd ${WRKBUILD} && ./configure ruby --ruby=ruby${MODRUBY_BINREV}
.endif

pre-install:
	cp ${WRKSRC}/build/libnxt.a ${PREFIX}/lib 
	cp ${WRKSRC}/build/unitd ${PREFIX}/sbin
.if ${UNIT_MODULE}
	cp ${WRKSRC}/build/${UNIT_MODULE} ${PREFIX}/lib
.endif


NO_TEST =		Yes

.include <bsd.port.mk>
