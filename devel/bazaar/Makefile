# $OpenBSD$

COMMENT =		version control system

SER =			2.5
V =			${SER}b4
DISTNAME =		bzr-${V}
PKGNAME =		bazaar-${V}
SUBST_VARS +=		V

CATEGORIES =		devel

HOMEPAGE =		http://bazaar.canonical.com/en/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		${MODPY_WANTLIB}

MASTER_SITES =		http://launchpad.net/bzr/${SER}/${V}/+download/

MODULES =		lang/python

USE_GROFF =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
