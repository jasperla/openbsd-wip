# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasm-streams 0.4.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasm_streams_0_4_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasm-streams
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wasm-streams-0.4.2.tar.gz{wasm-streams/0.4.2/download}
WRKDIST =		${WRKDIR}/wasm-streams-0.4.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasm-streams-0.4.2.tar.gz \
		${PREFIX}/share/modcargo-crates/wasm-streams-0.4.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasm-streams VERSION=0.4.2" > \
		${PREFIX}/share/modcargo-crates/wasm-streams-0.4.2.meta

.include <bsd.port.mk>
