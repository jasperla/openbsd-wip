# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: crossterm_winapi 0.9.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-crossterm_winapi_0_9_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/crossterm_winapi
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		crossterm_winapi-0.9.1.tar.gz{crossterm_winapi/0.9.1/download}
WRKDIST =		${WRKDIR}/crossterm_winapi-0.9.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/crossterm_winapi-0.9.1.tar.gz \
		${PREFIX}/share/modcargo-crates/crossterm_winapi-0.9.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=crossterm_winapi VERSION=0.9.1" > \
		${PREFIX}/share/modcargo-crates/crossterm_winapi-0.9.1.meta

.include <bsd.port.mk>
