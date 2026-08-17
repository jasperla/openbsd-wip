# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: bindgen 0.72.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-bindgen_0_72_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/bindgen
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		bindgen-0.72.1.tar.gz{bindgen/0.72.1/download}
WRKDIST =		${WRKDIR}/bindgen-0.72.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/bindgen-0.72.1.tar.gz \
		${PREFIX}/share/modcargo-crates/bindgen-0.72.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=bindgen VERSION=0.72.1" > \
		${PREFIX}/share/modcargo-crates/bindgen-0.72.1.meta

.include <bsd.port.mk>
