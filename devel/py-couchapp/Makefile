# $OpenBSD$

COMMENT =	Standalone CouchDB Application Development Made Simple

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		couchapp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://www.couchapp.org/

MAINTAINER =	Christian Rueger <cr+openbsd@rueger-net.de>

# Apache2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	${MODPY_WANTLIB}

MASTER_SITES =	http://github.com/couchapp/couchapp/downloads/

MODULES =	lang/python

NO_REGRESS =	Yes

WRKDIST =	${WRKDIR}/Couchapp-${MODPY_EGG_VERSION}/

.include <bsd.port.mk>
