# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.7

CATEGORIES =		devel
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
