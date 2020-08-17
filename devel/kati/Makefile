# $OpenBSD$

COMMENT =	experimental GNU make clone from Google
DISTNAME =	${GH_PROJECT}-0.0.0pl20200714
CATEGORIES =	devel

GH_ACCOUNT =	google
GH_PROJECT =	kati
GH_COMMIT =	631e467325a191a92d2e9454dc9b0fe6e3f21f80

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++17
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	devel/ninja \
		shells/bash

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		KATI_VERSION="${GH_COMMIT}"

# Uses go, downloads stuff...
NO_TEST =	Yes

do-gen:
	sed -i 's,TRUEPREFIX,${TRUEPREFIX},g' ${WRKSRC}/src/fileutil.cc
	cd ${WRKSRC} && grep -rl '/bin/bash' * |\
		xargs sed -i 's,/bin/bash,${TRUEPREFIX}/bin/bash,g'

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ckati ${PREFIX}/bin

.include <bsd.port.mk>
