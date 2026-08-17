# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: objc-sys 0.3.5

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-objc_sys_0_3_5-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/objc-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		objc-sys-0.3.5.tar.gz{objc-sys/0.3.5/download}
WRKDIST =		${WRKDIR}/objc-sys-0.3.5

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/objc-sys-0.3.5.tar.gz \
		${PREFIX}/share/modcargo-crates/objc-sys-0.3.5.tar.gz
	@echo "SOURCE_ONLY=1 NAME=objc-sys VERSION=0.3.5" > \
		${PREFIX}/share/modcargo-crates/objc-sys-0.3.5.meta

.include <bsd.port.mk>
