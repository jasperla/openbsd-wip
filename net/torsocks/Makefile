# $OpenBSD$

COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-1.2

SHARED_LIBS =		torsocks	0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		http://code.google.com/p/torsocks

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://torsocks.googlecode.com/files/

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--datarootdir="${PREFIX}/share/torsocks"

do-regress:
	cd ${WRKSRC}/test && sh run_tests.sh

.include <bsd.port.mk>
