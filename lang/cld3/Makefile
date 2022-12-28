COMMENT =		neural network model for language identification
CATEGORIES =		lang

GH_ACCOUNT =		google
GH_PROJECT =		cld3
V =			3.0.13
# tag is from 28.08.2020, use latest master
#GH_TAGNAME =		${V}
GH_COMMIT =		b48dc46512566f5a2d41118c8c1116c4f96dc661
DISTNAME =		cld3-${V}pl20220331

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		cld3	0.0	# upstream is static

# C++11
COMPILER =		base-clang ports-gcc
WANTLIB =		${COMPILER_LIBCXX} m
MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

BUILD_DEPENDS =		devel/protobuf
TEST_DEPENDS =		devel/protobuf

do-test:
.for _t in \
    getonescriptspan_test \
    language_identifier_features_test \
    language_identifier_main
	${WRKBUILD}/${_t}
.endfor

# "Support for libcld3 installation" https://github.com/google/cld3/issues/40
# XXX lacks headers, pkg-config and/or cmake files
do-install:
	${INSTALL_DATA} ${WRKBUILD}/libcld3.so.${LIBcld3_VERSION} ${PREFIX}/lib/

.include <bsd.port.mk>
