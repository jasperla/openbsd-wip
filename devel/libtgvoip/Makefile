# $OpenBSD$

COMMENT =	VoIP library for Telegram clients
DISTNAME =	libtgvoip-0.4.1.20170613
CATEGORIES =	devel

HOMEPAGE =	https://github.com/grishka/libtgvoip
MAINTAINER =	Brian Callahan <bcallah@devio.us>

GH_ACCOUNT =	grishka
GH_PROJECT =	libtgvoip
GH_COMMIT =	ba19486ef4ad391f42e2e2e04e0b8b9d59708831

# Unlicense
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =	gcc

BUILD_DEPENDS =	audio/pulseaudio \
		audio/opus \
		devel/gyp

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS} -std=c++11 -pthread `pkg-config --cflags opus`"

NO_TEST =	Yes

pre-build:
	cd ${WRKDIST} && gyp --depth=. libtgvoip.gyp --format=make

do-install:
	${INSTALL_DATA} ${WRKSRC}/out/Debug/obj.target/libtgvoip.a \
		${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/libtgvoip/{audio,os/posix}
	${INSTALL_DATA} ${WRKDIST}/*.h ${PREFIX}/include/libtgvoip
	${INSTALL_DATA} ${WRKDIST}/audio/*.h \
		${PREFIX}/include/libtgvoip/audio
	${INSTALL_DATA} ${WRKDIST}/os/posix/*.h \
		${PREFIX}/include/libtgvoip/os/posix

.include <bsd.port.mk>
