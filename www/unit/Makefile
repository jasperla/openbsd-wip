# $OpenBSD$

COMMENT =			Dynamic web and application server

V =					1.1
DISTNAME =			unit-${V}

CATEGORIES =		www

HOMEPAGE =			https://unit.nginx.org/

PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		https://unit.nginx.org/download/

#LIB_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

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

# Overrides for default values
#
#CFLAGS =		???
#LDFLAGS =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

.include <bsd.port.mk>
