# $OpenBSD$

COMMENT =	pretty print LaTeX messages

GH_ACCOUNT =	stefanhepp
GH_PROJECT =	pplatex
GH_COMMIT =	5cec891ad6aec0115081cdd114ae1cc4f1ed7c06

DISTNAME =	pplatex
PKGNAME =	pplatex-1.0-rc2

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/stefanhepp/pplatex

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

WANTLIB += ${COMPILER_LIBCXX} c m

LIB_DEPENDS =	devel/pcre

do-install:
	${INSTALL} ${WRKBUILD}/src/pplatex ${PREFIX}/bin

.include <bsd.port.mk>
