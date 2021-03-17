# $OpenBSD$

V =		1.0
COMMENT =	file and folder synchronization tool
DISTNAME =	StepSync-${V}
PKGNAME =	stepsync-${V}
CATEGORIES =	sysutils

HOMEPAGE =	http://gap.nongnu.org/stepsync/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep

NO_TEST =	Yes

.include <bsd.port.mk>
