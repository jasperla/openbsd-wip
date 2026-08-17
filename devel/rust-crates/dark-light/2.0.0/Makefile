# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: dark-light 2.0.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-dark_light_2_0_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/dark-light
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		dark-light-2.0.0.tar.gz{dark-light/2.0.0/download}
WRKDIST =		${WRKDIR}/dark-light-2.0.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/dark-light-2.0.0.tar.gz \
		${PREFIX}/share/modcargo-crates/dark-light-2.0.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=dark-light VERSION=2.0.0" > \
		${PREFIX}/share/modcargo-crates/dark-light-2.0.0.meta

.include <bsd.port.mk>
