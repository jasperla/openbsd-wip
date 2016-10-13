# $OpenBSD:

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		C++ toolkit for machine learning and data analysis

DISTNAME =		dlib-19.2

SHARED_LIBS +=  dlib                      0.0 # 19.2

CATEGORIES =		devel

HOMEPAGE =		http://dlib.net/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# MIT-like (Boost)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext gif jpeg m png pthread sqlite3

MASTER_SITES =		${HOMEPAGE}/files/
EXTRACT_SUFX =		.tar.bz2

.include <bsd.port.arch.mk>

MODULES =		lang/clang \
			devel/cmake

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/giflib \
			databases/sqlite3
#math/blas \


NO_TEST =		Yes

.include <bsd.port.mk>
