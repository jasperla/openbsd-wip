# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.7

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m sqlite3 stdc++

BUILD_DEPENDS =		devel/atf \
			devel/lutok \
			devel/kyua-testers

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

TEST_DEPENDS =		devel/kyua-cli

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
