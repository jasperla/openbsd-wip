# $OpenBSD$

# Keep in sync with lang/ldc
V =		0.17.6
COMMENT =	LLVM-based D compiler
PKGNAME =	ldc-bootstrap-${V}
DISTNAME = 	ldc-${V}-src
CATEGORIES =	lang

HOMEPAGE =	https://wiki.dlang.org/LDC
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
# DMD frontend/runtime: Boost 1.0
# GDC bits: dual licensed Artistic or GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += c m

MASTER_SITES = https://github.com/ldc-developers/ldc/releases/download/v${V}/

# C++11
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/libconfig \
		devel/llvm

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX="${PREFIX}/ldc-bootstrap"

TEST_DEPENDS =	shells/bash

.include <bsd.port.mk>
