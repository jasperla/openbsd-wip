# $OpenBSD$

V =			1.5
DISTNAME =		unit-${V}

COMMENT-main =		dynamic web and application server
COMMENT-go =		Golang support
COMMENT-php70 =		PHP 7.0 support
COMMENT-php71 =		PHP 7.1 support
COMMENT-php72 =		PHP 7.2 support
COMMENT-python27 =	Python 2.7 support
COMMENT-python36 =	Python 3.6 support
COMMENT-ruby23 =	Ruby 2.3 support
COMMENT-ruby24 =	Ruby 2.4 support
COMMENT-ruby25 =	Ruby 2.5 support

PKGNAME-main =		${DISTNAME}
PKGNAME-go =		unit-go-${V}
PKGNAME-php70 =		unit-php70-${V}
PKGNAME-php71 =		unit-php71-${V}
PKGNAME-php72 =		unit-php72-${V}
PKGNAME-python27 =	unit-python27-${V}
PKGNAME-python36 =	unit-python36-${V}
PKGNAME-ruby23 =	unit-ruby23-${V}
PKGNAME-ruby24 =	unit-ruby24-${V}
PKGNAME-ruby25 =	unit-ruby25-${V}

CATEGORIES =		www
HOMEPAGE =		https://unit.nginx.org/

PERMIT_PACKAGE_CDROM =	Yes
MASTER_SITES =		https://unit.nginx.org/download/

# please keep sorted
MULTI_PACKAGES =	-main -go -php70 -php71 -php72 \
			-python27 -python36 \
			-ruby23 -ruby24 -ruby25
PSEUDO_FLAVORS =	no_go no_php70 no_php71 no_php72 \
			no_python27 no_python36 \
			no_ruby23 no_ruby24 no_ruby25
FLAVOR ?=

WANTLIB-main =		c crypto m perl pthread ssl
WANTLIB-go =
WANTLIB-php70 =
WANTLIB-php71 =
WANTLIB-php72 =
WANTLIB-python27 =	m pthread python2.7 util
WANTLIB-python36 =	intl m pthread python3.6m util
WANTLIB-ruby23 =	gmp m pthread ruby23
WANTLIB-ruby24 =	gmp m pthread ruby24
WANTLIB-ruby25 =	gmp m pthread ruby25

# NOTE: don't use port modules for Python/Ruby/PHP, since we need all versions

# for BUILD_PKGPATH
.include <bsd.port.arch.mk>

RUN_DEPENDS =
RUN_DEPENDS-go =	${BUILD_PKGPATH},-main \
			lang/go
RUN_DEPENDS-php70 =	${BUILD_PKGPATH},-main \
			lang/php/7.0>=7.0,<7.1
RUN_DEPENDS-php71 =	${BUILD_PKGPATH},-main \
			lang/php/7.1>=7.1,<7.2
RUN_DEPENDS-php72 =	${BUILD_PKGPATH},-main \
			lang/php/7.2>=7.2,<7.3
RUN_DEPENDS-python27 =	${BUILD_PKGPATH},-main \
			lang/python/2.7>=2.7,<2.8
RUN_DEPENDS-python36 =	${BUILD_PKGPATH},-main \
			lang/python/3.6>=3.6,<3.7
RUN_DEPENDS-ruby23 =	${BUILD_PKGPATH},-main \
			lang/ruby/2.3>=2.3,<2.4
RUN_DEPENDS-ruby24 =	${BUILD_PKGPATH},-main \
			lang/ruby/2.4>=2.4,<2.5
RUN_DEPENDS-ruby25 =	${BUILD_PKGPATH},-main \
			lang/ruby/2.5>=2.5,<2.6

CONFIGURE_STYLE = 	simple

# must be synced with lang/go
GOPATH =		${LOCALBASE}/go-pkg
CONFIGURE_ENV =		GOPATH=${GOPATH}
MAKE_ENV =		GOPATH=${GOPATH}

# path options
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--modules=lib/unit/modules \
			--state=${VARBASE}/unit \
			--tests

# linking options
CONFIGURE_ARGS +=	--ld-opt="${LDFLAGS} -L${LOCALBASE}/lib" \
			--openssl

# TODO: separate user
CONFIGURE_ARGS +=	--user=www \
			--group=www

CONFIGURE-main =	perl
CONFIGURE-go =		go --go=${LOCALBASE}/bin/go --go-path=${GOPATH}
CONFIGURE-php70 =	php --module=php70 \
			--config=${LOCALBASE}/bin/php-config-7.0 \
			--lib-path=${LOCALBASE}/lib/php-7.0
CONFIGURE-php71 =	php --module=php71 \
			--config=${LOCALBASE}/bin/php-config-7.1 \
			--lib-path=${LOCALBASE}/lib/php-7.1
CONFIGURE-php72 =	php --module=php72 \
			--config=${LOCALBASE}/bin/php-config-7.2 \
			--lib-path=${LOCALBASE}/lib/php-7.2
CONFIGURE-python27 =	python --config=python2.7-config
CONFIGURE-python36 =	python --config=python3.6-config
CONFIGURE-ruby23 =	ruby --ruby=ruby23
CONFIGURE-ruby24 =	ruby --ruby=ruby24
CONFIGURE-ruby25 =	ruby --ruby=ruby25

.include <bsd.port.arch.mk>

TEST_TARGET =		tests
TEST_DEPENDS =		lang/python/3.6
UNIT_MODULES =		perl.unit.so

.if ${BUILD_PACKAGES:M-go}
BUILD_DEPENDS +=	lang/go
PORTHOME =		${WRKDIR}
.endif
.if ${BUILD_PACKAGES:M-php70}
BUILD_DEPENDS +=	lang/php/7.0
.endif
.if ${BUILD_PACKAGES:M-php71}
BUILD_DEPENDS +=	lang/php/7.1
.endif
.if ${BUILD_PACKAGES:M-php72}
BUILD_DEPENDS +=	lang/php/7.2
.endif
.if ${BUILD_PACKAGES:M-python27}
BUILD_DEPENDS +=	lang/python/2.7
UNIT_MODULES +=		python2.7.unit.so
.endif
.if ${BUILD_PACKAGES:M-python36}
BUILD_DEPENDS +=	lang/python/3.6
UNIT_MODULES +=		python3.6.unit.so
.endif
.if ${BUILD_PACKAGES:M-ruby23}
BUILD_DEPENDS +=	lang/ruby/2.3
UNIT_MODULES +=		ruby23.unit.so
.endif
.if ${BUILD_PACKAGES:M-ruby24}
BUILD_DEPENDS +=	lang/ruby/2.4
TEST_DEPENDS +=		www/ruby-rack,ruby24
UNIT_MODULES +=		ruby24.unit.so
.endif
.if ${BUILD_PACKAGES:M-ruby25}
BUILD_DEPENDS +=	lang/ruby/2.5
TEST_DEPENDS +=		www/ruby-rack,ruby25
UNIT_MODULES +=		ruby25.unit.so
.endif

post-configure:
.for _s in ${BUILD_PACKAGES}
	cd ${WRKBUILD}; ./configure ${CONFIGURE${_s}}
.endfor

post-test:
	cd ${WRKBUILD}/test; ./run.py

.include <bsd.port.mk>
