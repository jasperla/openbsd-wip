# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $

COMMENT =	minimal, pure, reflective object language

DISTNAME =	PharoVM-9.0.0-c729640-Linux-x86_64-c-src
PKGNAME =	pharo-9.0.0.c729640aa

EXTRACT_SUFX =	.zip

CATEGORIES =	lang

HOMEPAGE =	https://pharo.org

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

MASTER_SITES =	https://files.pharo.org/vm/pharo-spur64-headless/Linux-x86_64/source/

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-clang

USE_NINJA =		No

WRKSRC =		${WRKDIR}/pharo-vm

# "make port-lib-depends-check" can help
#WANTLIB =		???

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DGENERATE_SOURCES=FALSE \
			-DPHARO_DEPENDENCIES_PREFER_DOWNLOAD_BINARIES=FALSE \
			-DBUILD_BUNDLE=FALSE

# Dependencies
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		devel/libgit2/libgit2 \
			devel/libexecinfo \
			devel/libffi

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

.include <bsd.port.mk>
