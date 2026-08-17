# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: redox_syscall 0.5.18

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-redox_syscall_0_5_18-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/redox_syscall
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		redox_syscall-0.5.18.tar.gz{redox_syscall/0.5.18/download}
WRKDIST =		${WRKDIR}/redox_syscall-0.5.18

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/redox_syscall-0.5.18.tar.gz \
		${PREFIX}/share/modcargo-crates/redox_syscall-0.5.18.tar.gz
	@echo "SOURCE_ONLY=1 NAME=redox_syscall VERSION=0.5.18" > \
		${PREFIX}/share/modcargo-crates/redox_syscall-0.5.18.meta

.include <bsd.port.mk>
