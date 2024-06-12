V =		1.0.0
COMMENT =	get Repology.org info on the command line
DISTNAME =	repology-${V}
CATEGORIES =	net

HOMEPAGE =	https://github.com/ibara/repology
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES =	https://github.com/ibara/repology/releases/download/v${V}/

BUILD_DEPENDS =	lang/dmd

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
