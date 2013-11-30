# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.7

CATEGORIES =		devel sysutils
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

BUILD_DEPENDS =		sysutils/atf \
			devel/lutok \
			sysutils/kyua-testers

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-atf

TEST_DEPENDS =		sysutils/kyua-cli

do-test:
	kyua test -k ${WRKSRC}/Kyuafile

.include <bsd.port.mk>
