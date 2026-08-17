# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasip2 1.0.1+wasi-0.2.4

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasip2_1_0_1_wasi_0_2_4-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasip2
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wasip2-1.0.1+wasi-0.2.4.tar.gz{wasip2/1.0.1+wasi-0.2.4/download}
WRKDIST =		${WRKDIR}/wasip2-1.0.1+wasi-0.2.4

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasip2-1.0.1+wasi-0.2.4.tar.gz \
		${PREFIX}/share/modcargo-crates/wasip2-1.0.1_wasi-0.2.4.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasip2 VERSION=1.0.1+wasi-0.2.4" > \
		${PREFIX}/share/modcargo-crates/wasip2-1.0.1_wasi-0.2.4.meta

.include <bsd.port.mk>
