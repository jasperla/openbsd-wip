# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows 0.61.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_0_61_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows/
DISTFILES =		windows-0.61.3.tar.gz
WRKDIST =		${WRKDIR}/windows-0.61.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-0.61.3.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-0.61.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows VERSION=0.61.3" > \
		${PREFIX}/share/modcargo-crates/windows-0.61.3.meta

.include <bsd.port.mk>
