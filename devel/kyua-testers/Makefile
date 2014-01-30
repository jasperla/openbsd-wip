# $OpenBSD$

COMMENT =		scriptable interfaces to interact with test programs
DISTNAME =		kyua-testers-0.2

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c c

MASTER_SITES =		https://kyua.googlecode.com/files/

LIB_DEPENDS =		devel/atf

TEST_DEPENDS =		devel/kyua-cli

TEST_FLAGS =		KYUA=${LOCALBASE}/bin/kyua

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-doxygen

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
