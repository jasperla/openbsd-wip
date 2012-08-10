# $OpenBSD$
SHARED_ONLY =		Yes
COMMENT =		audio fingerprint extraction library
CATEGORIES =		audio devel
HOMEPAGE =		http://acoustid.org/chromaprint/
DISTNAME =		chromaprint-0.6

MASTER_SITES =		http://www.ohvost.ru/dnl/

SHARED_LIBS =		chromaprint		0.0  # 0.1

# LGPL2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		avcodec avutil m stdc++

MODULES =		devel/cmake

BUILD_DEPENDS =		audio/taglib \
			devel/boost

LIB_DEPENDS =		graphics/ffmpeg

# gtest presence is checked in configure stage, so this cannot be in REGRESS_DEPENDS
BUILD_DEPENDS +=	devel/gtest
CONFIGURE_ARGS =	-DBUILD_TESTS:Bool=Yes

do-regress:
	cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check

.include <bsd.port.mk>
