# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: js-sys 0.3.91

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-js_sys_0_3_91-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/js-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		js-sys-0.3.91.tar.gz{js-sys/0.3.91/download}
WRKDIST =		${WRKDIR}/js-sys-0.3.91

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/js-sys-0.3.91.tar.gz \
		${PREFIX}/share/modcargo-crates/js-sys-0.3.91.tar.gz
	@echo "SOURCE_ONLY=1 NAME=js-sys VERSION=0.3.91" > \
		${PREFIX}/share/modcargo-crates/js-sys-0.3.91.meta

.include <bsd.port.mk>
