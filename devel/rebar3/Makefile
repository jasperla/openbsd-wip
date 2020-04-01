# https://github.com/erlang/rebar3/archive/3.13.1.zip

COMMENT = 	Erlang build tool

V=		3.13.1
PKGNAME=	rebar3-${V}
DISTNAME= 	${V}
CATEGORIES=	devel
HOMEPAGE=	https://www.rebar3.org
MAINTAINER =	Mathieu Kerjouan <niamkik@protonmail.com>

PERMIT_PACKAGE=	Yes

FLAVORS =	erlang16 erlang17 erlang18 erlang19 erlang21
FLAVOR ?=	erlang21

MASTER_SITES += https://github.com/erlang/rebar3/archive/

EXTRACT_SUFX = .zip

WRKDIST = rebar3-${V}

.if ${FLAVOR:Merlang16} || ${FLAVOR:Merlang17} || ${FLAVOR:Merlang18} \
	|| ${FLAVOR:Merlang19} || ${FLAVOR:Merlang21}
_EV =                   ${FLAVOR:C/.*([0-9][0-9]+\$)/\1/}
RUN_DEPENDS =           lang/erlang/${_EV}
ERL_VERSION =           ${_EV}
.else
ERRORS +=               "Invalid FLAVOR set: ${FLAVOR}"
.endif

BUILD_DEPENDS += ${RUN_DEPENDS}
do-build:
	cd /usr/ports/pobj/${PKGNAME}${FLAVOR_EXT}/${WRKDIST}; \
	escript21 bootstrap

do-install:
	${INSTALL_PROGRAM} /usr/ports/pobj/${PKGNAME}${FLAVOR_EXT}/${WRKDIST}/rebar3 ${PREFIX}/bin

.include <bsd.port.mk>
