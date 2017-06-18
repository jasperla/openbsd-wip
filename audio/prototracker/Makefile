# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	multiplatform fakebit chiptune tracker

GH_ACCOUNT =	kometbomb
GH_PROJECT =	prototracker
GH_COMMIT =	010cabeb42a6186e59ee3810db0faffc90a22200

DISTNAME =	prototracker-20170528

CATEGORIES =	audio

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL2 SDL2_image c m pthread

COMPILER =	gcc

LIB_DEPENDS =	devel/sdl2 \
		devel/sdl2-image

MAKE_ARGS =	CXX=${CXX} \
		CXXFLAGS=${CXXFLAGS}

ALL_TARGET =	linux

NO_TEST =	Yes

pre-configure:
	@sed -i -e 's,\"assets,\"${PREFIX}/share/prototracker/assets,' \
		${WRKSRC}/src/*.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/prototracker ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/prototracker/assets
	cp -r ${WRKSRC}/assets/* ${PREFIX}/share/prototracker/assets
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prototracker
	cp -r ${WRKSRC}/doc/* ${PREFIX}/share/doc/prototracker

.include <bsd.port.mk>
