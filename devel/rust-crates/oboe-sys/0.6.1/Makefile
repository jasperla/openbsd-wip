# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: oboe-sys 0.6.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-oboe_sys_0_6_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/oboe-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		oboe-sys-0.6.1.tar.gz{oboe-sys/0.6.1/download}
WRKDIST =		${WRKDIR}/oboe-sys-0.6.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/oboe-sys-0.6.1.tar.gz \
		${PREFIX}/share/modcargo-crates/oboe-sys-0.6.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=oboe-sys VERSION=0.6.1" > \
		${PREFIX}/share/modcargo-crates/oboe-sys-0.6.1.meta

.include <bsd.port.mk>
