# $OpenBSD $

COMMENT =		scriptable interfaces to interact with test programs
DISTNAME =		kyua-testers-0.1

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c c

LIB_DEPENDS = devel/atf

TEST_DEPENDS = devel/kyua-cli

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
