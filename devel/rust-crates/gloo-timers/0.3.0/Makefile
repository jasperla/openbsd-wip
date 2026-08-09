# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: gloo-timers 0.3.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-gloo_timers_0_3_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/gloo-timers
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/gloo-timers/
DISTFILES =		gloo-timers-0.3.0.tar.gz
WRKDIST =		${WRKDIR}/gloo-timers-0.3.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/gloo-timers-0.3.0.tar.gz \
		${PREFIX}/share/modcargo-crates/gloo-timers-0.3.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=gloo-timers VERSION=0.3.0" > \
		${PREFIX}/share/modcargo-crates/gloo-timers-0.3.0.meta

.include <bsd.port.mk>
