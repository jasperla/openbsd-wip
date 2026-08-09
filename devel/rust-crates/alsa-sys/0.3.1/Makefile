# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: alsa-sys 0.3.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-alsa_sys_0_3_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/alsa-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/alsa-sys/
DISTFILES =		alsa-sys-0.3.1.tar.gz
WRKDIST =		${WRKDIR}/alsa-sys-0.3.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/alsa-sys-0.3.1.tar.gz \
		${PREFIX}/share/modcargo-crates/alsa-sys-0.3.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=alsa-sys VERSION=0.3.1" > \
		${PREFIX}/share/modcargo-crates/alsa-sys-0.3.1.meta

.include <bsd.port.mk>
