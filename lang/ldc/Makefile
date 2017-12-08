# $OpenBSD$

V =		1.5.0
COMMENT =	LLVM-based D compiler
DISTNAME =	ldc-${V}-src
PKGNAME =	ldc-${V}
CATEGORIES =	lang

HOMEPAGE =	https://wiki.dlang.org/LDC
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
# DMD frontend/runtime: Boost 1.0
# GDC bits: dual licensed Artistic or GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += c m

MASTER_SITES =	https://github.com/ldc-developers/ldc/releases/download/v${V}/

# C++11
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	lang/ldc-bootstrap

LIB_DEPENDS =	devel/libconfig \
		devel/llvm

TEST_DEPENDS =	shells/bash

.include <bsd.port.mk>
