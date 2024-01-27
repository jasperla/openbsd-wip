COMMENT =	resource monitor

GH_ACCOUNT =	aristocratos
GH_PROJECT =	btop
GH_TAGNAME =    v1.3.0

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB	= ${COMPILER_LIBCXX} c m pthread kvm

COMPILER =		base-clang

MODULES =		lang/clang
MODCLANG_VERSION =	16

USE_GMAKE =	Yes
MAKE_FLAGS =	STRIP=true VERBOSE=true QUIET=true \
		ADDFLAGS="${CXXFLAGS} ${LDFLAGS}"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/btop ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/btop
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/btop/README.md
	cp -pr ${WRKSRC}/themes ${PREFIX}/share/btop

.include <bsd.port.mk>
