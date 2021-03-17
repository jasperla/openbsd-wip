# $OpenBSD$

COMMENT =	package manager for the D programming language
DISTNAME =	dub-1.23.0

WANTLIB += c c++abi m pthread

BUILD_DEPENDS =	lang/dlang/dmd

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/dmd -run build.d

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/dub ${PREFIX}/bin

.include <bsd.port.mk>
