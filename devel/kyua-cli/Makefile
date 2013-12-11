# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.8

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

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE =	gnu

TEST_DEPENDS =		devel/kyua-cli

PORTHOME =		${WRKDIR}
WRKSRC =		${WRKDIR}/kyua/

pre-configure:
		@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i -s

.include <bsd.port.mk>
