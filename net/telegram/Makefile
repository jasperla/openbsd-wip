# $OpenBSD$

V =		1.1.7
COMMENT =	official Telegram desktop client
PKGNAME =	telegram-${V}
CATEGORIES =	net

HOMEPAGE =	https://telegram.org/
MAINTAINER =	Brian Callahan <bcallah@devio.us>

GH_ACCOUNT =	telegramdesktop
GH_PROJECT =	tdesktop
GH_TAGNAME =	v${V}

# GPLv3+ with OpenSSL exception
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB

# XXX: python still tries to hijack the build...
MODULES =	lang/python \
		x11/qt5
MODPY_BUILDDEP =	No

BUILD_DEPENDS =	devel/gyp \
		shells/bash

LIB_DEPENDS =	archivers/xz \
		audio/openal \
		audio/opus \
		audio/portaudio-svn \
		devel/breakpad \
		devel/dee \
		devel/libtgvoip \
		graphics/ffmpeg\
		graphics/libexif \
		x11/xkbcommon

USE_GMAKE =	Yes

# gyp really sucks...
CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/X11/qt5 \
		`pkg-config --cflags Qt5Core` \
		-Wno-error
LDFLAGS +=	-L${LOCALBASE}/lib -L${X11BASE}/lib

WRKSRC =	${WRKDIST}/Telegram

do-configure:
.if ${MACHINE_ARCH} == amd64 || ${MACHINE_ARCH} == aarch64 || \
	${MACHINE_ARCH} == mips64el || ${MACHINE_ARCH} == mips64 || \
	${MACHINE_ARCH} == sparc64
	sed -i 's,linux32,linux,g' ${WRKSRC}/gyp/refresh.sh
.endif
	sed -i 's,$${MODPY_BIN},${MODPY_BIN},g' \
		${WRKSRC}/gyp/Telegram.gyp \
		${WRKSRC}/gyp/codegen_rules.gypi \
		${WRKSRC}/gyp/qt.gypi
	sed -i -e 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		-e 's,$${X11BASE},${X11BASE},g' \
		${WRKSRC}/gyp/qt.gypi
	cd ${WRKSRC} && gyp/refresh.sh
	# Now clean up after gyp's mistakes...
	sed -i -e 's,-pipe,${CXXFLAGS},g' \
		-e 's,-Werror,-Wno-error,g' \
		-e 's,LD_LIBRARY_PATH=,LD_LIBRARY_PATH=${LOCALBASE}/lib/qt5/plugins/bearer:${LOCALBASE}/lib/qt5/plugins/platforms:,g' \
		-e 's, -I/usr/local/include/X11/qt5/bin/rcc,${LOCALBASE}/lib/qt5/bin/rcc,g' \
		${WRKSRC}/Telegram.target.mk
	sed -i -e 's,$$(CC),egcc,g' -e 's,$$(CXX),eg++,g' \
		-e 's,$$(LINK),eg++,g' -e 's,$$(CFLAGS),${CFLAGS},g' \
		-e 's,$$(CXXFLAGS),${CXXFLAGS},g' \
		${WRKSRC}/Makefile

# XXX: Prevent python from hijacking the build...
#      But we lose the environment setup the ports system does...
do-build:
	cd ${WRKSRC} && gmake V=0

.include <bsd.port.mk>
