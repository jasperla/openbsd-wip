# $OpenBSD$

COMMENT =		free video codec
DISTNAME =		daala-0.0.20150701
CATEGORIES =		multimedia graphics
HOMEPAGE =		https://xiph.org/daala/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  daalabase                 0.0 # 0.1
SHARED_LIBS +=  daaladec                  0.0 # 0.1
SHARED_LIBS +=  daalaenc                  0.0 # 0.1

WANTLIB += SDL2 c m ogg png pthread sndio stdc++ usbhid wx_base
WANTLIB += wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui
WANTLIB += wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc z

GH_ACCOUNT =		xiph
GH_PROJECT =		daala
GH_COMMIT =		75f9dc1b8b4b031d359ae76694fba792976d4edd

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		audio/libogg \
			devel/sdl2 \
			graphics/jpeg \
			graphics/png \
			x11/wxWidgets,-main
TEST_DEPENDS =		devel/check

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
USE_LIBTOOL=		gnu

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-assertions \
			--enable-logging \
			--enable-analyzer \
			--enable-encoder-check \
			--enable-dct-check-overflow \
			--enable-check-asm \
			--enable-dump-images \
			--enable-dump-recons \
			--enable-dump-coeffs \
			--enable-accounting \
			--enable-ec-accounting

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib
ALL_TARGET =		all tools

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				./autogen.sh

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/examples/.libs/analyzer \
	                   ${WRKBUILD}/examples/.libs/dump_video \
	                   ${WRKBUILD}/examples/.libs/encoder_example \
	                   ${WRKBUILD}/examples/.libs/player_example \
				${PREFIX}/bin

.include <bsd.port.mk>
