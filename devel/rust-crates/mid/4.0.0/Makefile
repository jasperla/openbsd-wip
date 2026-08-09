# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: mid 4.0.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-mid_4_0_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/mid
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/mid/
DISTFILES =		mid-4.0.0.tar.gz
WRKDIST =		${WRKDIR}/mid-4.0.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/mid-4.0.0.tar.gz \
		${PREFIX}/share/modcargo-crates/mid-4.0.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=mid VERSION=4.0.0" > \
		${PREFIX}/share/modcargo-crates/mid-4.0.0.meta

.include <bsd.port.mk>
