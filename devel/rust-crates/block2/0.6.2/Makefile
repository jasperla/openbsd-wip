# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: block2 0.6.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-block2_0_6_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/block2
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/block2/
DISTFILES =		block2-0.6.2.tar.gz
WRKDIST =		${WRKDIR}/block2-0.6.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/block2-0.6.2.tar.gz \
		${PREFIX}/share/modcargo-crates/block2-0.6.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=block2 VERSION=0.6.2" > \
		${PREFIX}/share/modcargo-crates/block2-0.6.2.meta

.include <bsd.port.mk>
