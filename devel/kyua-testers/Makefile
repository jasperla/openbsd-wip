# $OpenBSD $

COMMENT =		scriptable interfaces to interact with test programs
DISTNAME =		kyua-testers-0.2

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c c

MASTER_SITES =		https://kyua.googlecode.com/files/

LIB_DEPENDS =		devel/atf

TEST_DEPENDS =		devel/kyua-cli

TEST_FLAGS =		KYUA=${LOCALBASE}/bin/kyua

CONFIGURE_STYLE =	gnu

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
