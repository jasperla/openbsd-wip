# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		easy to use database connection pool Library

DISTNAME =		libzdb-2.12

SHARED_LIBS += 		zdb 0.0 # 10.0

CATEGORIES =		databases

HOMEPAGE =		http://www.tildeslash.com/libzdb/#

WANTLIB += pthread sqlite3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.tildeslash.com/libzdb/dist/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-postgresql=no \
			--with-mysql=no

FLAVORS =	mysql postgresql
FLAVOR ?=

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=   databases/mysql
WANTLIB += lib/mysql/mysqlclient
WANTLIB += crypto m ssl z
CONFIGURE_ARGS+= --with-mysql
.endif

.if ${FLAVOR:Mpostgresql}
LIB_DEPENDS+=   databases/postgresql
WANTLIB += pq
WANTLIB+= asn1 com_err crypto heimbase krb5 roken ssl wind
CONFIGURE_ARGS+= --with-postgresql
.endif

do-test:
	${WRKBUILD}/test/exception
#	${WRKBUILD}/test/pool interactive test
	${WRKBUILD}/test/select
	${WRKBUILD}/test/unit

.include <bsd.port.mk>
