# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-targets 0.48.5

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_targets_0_48_5-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-targets
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows-targets/
DISTFILES =		windows-targets-0.48.5.tar.gz
WRKDIST =		${WRKDIR}/windows-targets-0.48.5

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-targets-0.48.5.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-targets-0.48.5.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-targets VERSION=0.48.5" > \
		${PREFIX}/share/modcargo-crates/windows-targets-0.48.5.meta

.include <bsd.port.mk>
