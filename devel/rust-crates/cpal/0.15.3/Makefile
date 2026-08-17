# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: cpal 0.15.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-cpal_0_15_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/cpal
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		cpal-0.15.3.tar.gz{cpal/0.15.3/download}
WRKDIST =		${WRKDIR}/cpal-0.15.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/cpal-0.15.3.tar.gz \
		${PREFIX}/share/modcargo-crates/cpal-0.15.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=cpal VERSION=0.15.3" > \
		${PREFIX}/share/modcargo-crates/cpal-0.15.3.meta

.include <bsd.port.mk>
