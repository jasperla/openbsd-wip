# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: dispatch2 0.3.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-dispatch2_0_3_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/dispatch2
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/dispatch2/
DISTFILES =		dispatch2-0.3.0.tar.gz
WRKDIST =		${WRKDIR}/dispatch2-0.3.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/dispatch2-0.3.0.tar.gz \
		${PREFIX}/share/modcargo-crates/dispatch2-0.3.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=dispatch2 VERSION=0.3.0" > \
		${PREFIX}/share/modcargo-crates/dispatch2-0.3.0.meta

.include <bsd.port.mk>
