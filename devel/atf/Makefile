# $OpenBSD $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.18

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# 2- and 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m stdc++

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/kyua-cli
TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
