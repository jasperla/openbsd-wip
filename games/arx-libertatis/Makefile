# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	cross-platform port of Arx Fatalis, a first-person RPG
DISTNAME =	arx-libertatis-1.1.2
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://arx-libertatis.org/
#MAINTAINER =	???

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Widgets SDL c freetype m openal z

MASTER_SITES =	https://arx-libertatis.org/files/ \
		${MASTER_SITE_SOURCEFORGE:=arx/}

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	audio/openal \
		devel/sdl \
		graphics/glew

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DCMAKE_EXE_LINKER_FLAGS="-lpthread"

NO_TEST =	Yes

.include <bsd.port.mk>
