# $OpenBSD$
PKG_ARCH =		*

COMMENT =		packages readme files viewer
DISTNAME =		pkg_readme-1.1
CATEGORIES =		sysutils
HOMEPAGE =		http://www.openbsd.org/
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

DISTFILES =
NO_CHECKSUM =	Yes
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/pkg_readme ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/pkg_readme.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
