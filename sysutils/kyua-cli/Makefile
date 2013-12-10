# $OpenBSD $

COMMENT =		testing framework
VERSION = 		0.7
DISTNAME =		kyua-cli-${VERSION}

CATEGORIES =		devel sysutils
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m sqlite3 stdc++

BUILD_DEPENDS =		sysutils/atf \
			devel/lutok \
			sysutils/kyua-testers

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

TEST_DEPENDS =		sysutils/kyua-cli

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
