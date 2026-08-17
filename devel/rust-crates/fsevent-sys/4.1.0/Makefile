# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: fsevent-sys 4.1.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-fsevent_sys_4_1_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/fsevent-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		fsevent-sys-4.1.0.tar.gz{fsevent-sys/4.1.0/download}
WRKDIST =		${WRKDIR}/fsevent-sys-4.1.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/fsevent-sys-4.1.0.tar.gz \
		${PREFIX}/share/modcargo-crates/fsevent-sys-4.1.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=fsevent-sys VERSION=4.1.0" > \
		${PREFIX}/share/modcargo-crates/fsevent-sys-4.1.0.meta

.include <bsd.port.mk>
