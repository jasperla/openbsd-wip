# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: coreaudio-sys 0.2.18

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-coreaudio_sys_0_2_18-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/coreaudio-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		coreaudio-sys-0.2.18.tar.gz{coreaudio-sys/0.2.18/download}
WRKDIST =		${WRKDIR}/coreaudio-sys-0.2.18

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/coreaudio-sys-0.2.18.tar.gz \
		${PREFIX}/share/modcargo-crates/coreaudio-sys-0.2.18.tar.gz
	@echo "SOURCE_ONLY=1 NAME=coreaudio-sys VERSION=0.2.18" > \
		${PREFIX}/share/modcargo-crates/coreaudio-sys-0.2.18.meta

.include <bsd.port.mk>
