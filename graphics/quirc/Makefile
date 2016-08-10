# $OpenBSD$

COMMENT =		QR decoder library
DISTNAME =		libquirc-1.0.20160719
GH_ACCOUNT =		dlbeer
GH_PROJECT =		quirc
GH_COMMIT =		d968f0ae33a95061559c6f04192e6d63387f15a8
CATEGORIES =		graphics

SHARED_LIBS +=		quirc 0.0 # 1.0

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_gfx c jpeg m pthread

LIB_DEPENDS =		devel/sdl-gfx \
			graphics/jpeg
TEST_DEPENDS =		graphics/ImageMagick \
			graphics/libqrencode \
			graphics/png

LIB_SONAME =		libquirc.so.${LIBquirc_VERSION}
MAKE_FLAGS =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIB_SONAME="${LIB_SONAME}"
FAKE_FLAGS =		DESTDIR=""

USE_GMAKE =		Yes

ALL_TARGET =		libquirc.a $(LIB_SONAME) quirc-scanner quirc-demo
TEST_TARGET =		qrtest
TEST_DATA =		${WRKBUILD}/test_data

pre-test:
	${INSTALL_DATA_DIR} ${TEST_DATA}
	qrencode -o ${TEST_DATA}/1.png "${DISTNAME} - ${COMMENT}"

post-test:
	${WRKBUILD}/qrtest ${TEST_DATA} | sed 1,4d | tee ${WRKBUILD}/test.out
	cmp ${WRKBUILD}/test.out ${FILESDIR}/test.out

.include <bsd.port.mk>
