# $OpenBSD

COMMENT =	third-party client for Google Drive

VERSION =	0.4.2-pre
DISTNAME =	grive-${VERSION}
PKGNAME =	grive-${VERSION:S/-dev//}

CATEGORIES =	sysutils

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

GH_ACCOUNT =	vitalif
GH_PROJECT =	grive2
GH_COMMIT =	44cb91f94e67bcdad77ca564b4d8083cedf72251

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_unit_test_framework-mt c curl expat gcrypt gpg-error
WANTLIB += iberty m pthread yajl z boost_regex-mt

MODULES =	devel/cmake \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

LIB_DEPENDS =	devel/boost \
		devel/libyajl \
		net/curl \
		security/libgcrypt

CXXFLAGS += -I${LOCALBASE}/include

.include <bsd.port.mk>
