# $OpenBSD$

COMMENT =	open source clone of Age of Empires II game engine
CATEGORIES =	games x11

SHARED_LIBS +=	openage                   0.0 # 0.0

GH_ACCOUNT =	SFTtech
GH_PROJECT =	openage
GH_TAGNAME =	v0.4.1

HOMEPAGE =	https://openage.sft.mx/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick SDL2 SDL2_image c curses epoxy
WANTLIB += execinfo fontconfig form freetype harfbuzz m nyan ogg
WANTLIB += opus opusfile png util z

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS =	graphics/py-Pillow,${MODPY_FLAVOR} \
		lang/cython,${MODPY_FLAVOR} \
		math/eigen3>=3.3.9 \
		math/py-numpy,${MODPY_FLAVOR} \
		textproc/py-pygments,${MODPY_FLAVOR} \
		www/py-jinja2,${MODPY_FLAVOR}

LIB_DEPENDS =	audio/opusfile \
		devel/nyan \
		devel/sdl2-image \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib -lc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openage
	mv ${WRKINST}/etc/openage/keybinds.oac \
		${PREFIX}/share/examples/openage
	rm -rf ${WRKINST}/etc/openage

.include <bsd.port.mk>
