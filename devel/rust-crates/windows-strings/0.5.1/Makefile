# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-strings 0.5.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_strings_0_5_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-strings
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows-strings/
DISTFILES =		windows-strings-0.5.1.tar.gz
WRKDIST =		${WRKDIR}/windows-strings-0.5.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-strings-0.5.1.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-strings-0.5.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-strings VERSION=0.5.1" > \
		${PREFIX}/share/modcargo-crates/windows-strings-0.5.1.meta

.include <bsd.port.mk>
