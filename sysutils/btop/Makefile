COMMENT =	resource monitor

GH_ACCOUNT =	aristocratos
GH_PROJECT =	btop
GH_TAGNAME =    v1.3.0

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB	= ${COMPILER_LIBCXX} c m pthread kvm

# C++23
COMPILER =	base-clang

USE_GMAKE =	Yes
MAKE_FLAGS =	VERBOSE=true QUIET=true ADDFLAGS="${CXXFLAGS} ${LDFLAGS}"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/btop ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/btop
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/btop/README.md
	cp -pr ${WRKSRC}/themes ${PREFIX}/share/btop

.include <bsd.port.mk>
