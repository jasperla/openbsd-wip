# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT =	minimal, pure, reflective object language

GH_ACCOUNT =	pharo-project
GH_PROJECT =	opensmalltalk-vm
#GH_TAGNAME =	1.0
GH_COMMIT =	c729640aa6235e9b9152d24e323c5736d88ee680

# 8? oh god
DISTNAME =	pharo-9.0.0

CATEGORIES =	lang

HOMEPAGE =	https://pharo.org

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-clang

USE_NINJA =		No

# "make port-lib-depends-check" can help
#WANTLIB =		???

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DGENERATE_SOURCES=FALSE \
			-DPHARO_DEPENDENCIES_PREFER_DOWNLOAD_BINARIES=FALSE \
			-DBUILD_BUNDLE=FALSE \
			-DALWAYS_INTERACTIVE=TRUE

# Dependencies
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		devel/libgit2/libgit2 \
			devel/libexecinfo

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

.include <bsd.port.mk>
