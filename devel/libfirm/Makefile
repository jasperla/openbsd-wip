# $OpenBSD$

# We only have these backends.
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with lang/cparser
COMMENT =	graph based intermediate representation and backend
DISTNAME =	libfirm-1.22.0
CATEGORIES =	devel

SHARED_LIBS +=	firm                      0.0 # 0.0

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m

MASTER_SITES =	https://github.com/libfirm/libfirm/archive/

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS:Bool=On

NO_TEST =	Yes

# GitHub has silly naming practices.
WRKDIST =	${WRKDIR}/libfirm-${DISTNAME}

.include <bsd.port.mk>
