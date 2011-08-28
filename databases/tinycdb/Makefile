# $OpenBSD$

COMMENT =	creating and reading constant databases

DISTNAME =	tinycdb_0.77
PKGNAME =	${DISTNAME:S/_/-/}
CATEGORIES =	databases
SHARED_LIBS =	cdb	1.0

HOMEPAGE =	http://www.corpit.ru/mjt/tinycdb.html
MASTER_SITES =	http://www.corpit.ru/mjt/tinycdb/

MAINTAINER =	Christian Rueger <cr+openbsd@rueger-net.de>

# Public domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c

WRKDIST =	${WRKDIR}/${PKGNAME}
MAKE_FLAGS +=	sysconfdir="${SYSCONFDIR}" LIBcdb_VERSION="${LIBcdb_VERSION}"
FAKE_FLAGS +=	${MAKE_FLAGS} prefix="${PREFIX}"

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:L} != "yes"
MAKE_FLAGS +=		INSTALLPROG="cdb-shared"
ALL_TARGET +=		shared
INSTALL_TARGET +=	install-sharedlib
REGRESS_TARGET =	tests-shared
.else
REGRESS_TARGET =	tests
.endif
