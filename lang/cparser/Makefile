# $OpenBSD$

# Depends on libFirm
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with devel/libfirm
COMMENT =	C99 parser and frontend for libFirm
DISTNAME =	cparser-1.22.0
CATEGORIES =	lang

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c firm m

MASTER_SITES =	https://github.com/libfirm/cparser/archive/

MODULES =	devel/cmake

LIB_DEPENDS =	devel/libfirm

NO_TEST =	Yes

# GitHub has silly naming practices.
WRKDIST =	${WRKDIR}/cparser-${DISTNAME}

.include <bsd.port.mk>
