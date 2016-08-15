# $OpenBSD$

COMMENT =		QR decoder library
DISTNAME =		libquirc-0.0.20160815
GH_ACCOUNT =		dlbeer
GH_PROJECT =		quirc
GH_COMMIT =		b0fc6bfd5f66dc5e7691e84b31944f1ab2c7d04b
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

MAKE_FLAGS =		CFLAGS="${CFLAGS} ${PIC_FLAG} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIB_VERSION=${LIBquirc_VERSION}
FAKE_FLAGS =		DESTDIR=""

ALL_TARGET =		libquirc.a libquirc.so quirc-scanner quirc-demo
TEST_TARGET =		qrtest
TESTDIR =		${WRKBUILD}/test_data

pre-test:
	@${INSTALL_DATA_DIR} ${TESTDIR}
	@qrencode "${DISTNAME} - ${COMMENT}" -o - | convert - "${TESTDIR}/1.png"
	@cat pkg/PLIST | qrencode -o - | convert - "${TESTDIR}/2.png"

post-test:
	@${WRKBUILD}/qrtest ${TESTDIR} | grep '^${TESTDIR:T}' | \
		tee ${WRKBUILD}/test.out
	@cmp ${WRKBUILD}/test.out ${FILESDIR}/test.out

.include <bsd.port.mk>
