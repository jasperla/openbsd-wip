# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: winapi-util 0.1.11

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-winapi_util_0_1_11-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/winapi-util
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		winapi-util-0.1.11.tar.gz{winapi-util/0.1.11/download}
WRKDIST =		${WRKDIR}/winapi-util-0.1.11

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/winapi-util-0.1.11.tar.gz \
		${PREFIX}/share/modcargo-crates/winapi-util-0.1.11.tar.gz
	@echo "SOURCE_ONLY=1 NAME=winapi-util VERSION=0.1.11" > \
		${PREFIX}/share/modcargo-crates/winapi-util-0.1.11.meta

.include <bsd.port.mk>
