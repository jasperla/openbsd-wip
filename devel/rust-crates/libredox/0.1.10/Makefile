# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: libredox 0.1.10

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-libredox_0_1_10-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/libredox
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/libredox/
DISTFILES =		libredox-0.1.10.tar.gz
WRKDIST =		${WRKDIR}/libredox-0.1.10

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/libredox-0.1.10.tar.gz \
		${PREFIX}/share/modcargo-crates/libredox-0.1.10.tar.gz
	@echo "SOURCE_ONLY=1 NAME=libredox VERSION=0.1.10" > \
		${PREFIX}/share/modcargo-crates/libredox-0.1.10.meta

.include <bsd.port.mk>
