# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: pprof 0.15.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-pprof_0_15_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/pprof
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		pprof-0.15.0.tar.gz{pprof/0.15.0/download}
WRKDIST =		${WRKDIR}/pprof-0.15.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/pprof-0.15.0.tar.gz \
		${PREFIX}/share/modcargo-crates/pprof-0.15.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=pprof VERSION=0.15.0" > \
		${PREFIX}/share/modcargo-crates/pprof-0.15.0.meta

.include <bsd.port.mk>
