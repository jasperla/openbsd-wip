# $OpenBSD$

COMMENT =	terminal image viewer
GH_ACCOUNT =	hzeller
GH_PROJECT =	timg
GH_TAGNAME =	v0.9.5
CATEGORIES =	graphics

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${LIBCXX} 
WANTLIB += GraphicsMagick GraphicsMagick++ ICE SM X11 Xext bz2
WANTLIB += c freetype lcms2 ltdl lzma m pthread z

LIB_DEPENDS =		graphics/GraphicsMagick

MAKE_ENV =		CXXFLAGS="${CFLAGS} -fPIC"
USE_GMAKE =		Yes
WRKSRC =		${WRKDIST}/src
ALL_TARGET =		timg
NO_TEST =		Yes

.include <bsd.port.mk>
