# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	web application framework for writing scalable web APIs in C

GH_ACCOUNT =	jorisvink
GH_PROJECT =	kore
GH_TAGNAME =	2.0.0-release

PKGNAME = 	${DISTNAME:S/-release//}

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto pthread ssl

FLAVORS =	pgsql
FLAVOR ?=

.if ${FLAVOR} == "pgsql"
MAKE_ENV =	PGSQL=1
WANTLIB +=	pq
LIB_DEPENDS +=	databases/postgresql,-main
.endif

USE_GMAKE =	Yes
MAKE_ENV +=	DEBUG=1 TASKS=1

NO_TEST =	Yes

.include <bsd.port.mk>
