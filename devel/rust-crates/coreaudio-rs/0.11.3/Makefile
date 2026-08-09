# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: coreaudio-rs 0.11.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-coreaudio_rs_0_11_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/coreaudio-rs
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/coreaudio-rs/
DISTFILES =		coreaudio-rs-0.11.3.tar.gz
WRKDIST =		${WRKDIR}/coreaudio-rs-0.11.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/coreaudio-rs-0.11.3.tar.gz \
		${PREFIX}/share/modcargo-crates/coreaudio-rs-0.11.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=coreaudio-rs VERSION=0.11.3" > \
		${PREFIX}/share/modcargo-crates/coreaudio-rs-0.11.3.meta

.include <bsd.port.mk>
