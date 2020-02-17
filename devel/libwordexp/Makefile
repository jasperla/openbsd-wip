# $OpenBSD$

COMMENT =	port of NetBSD wordexp(3) to OpenBSD
DISTNAME =	libwordexp-9.0
CATEGORIES =	devel

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/ibara/libwordexp/releases/download/${DISTNAME}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Hard requirement
RUN_DEPENDS =	shells/ash

NO_TEST =	Yes

.include <bsd.port.mk>
