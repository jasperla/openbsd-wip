# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: clipboard-win 5.4.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-clipboard_win_5_4_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/clipboard-win
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/clipboard-win/
DISTFILES =		clipboard-win-5.4.1.tar.gz
WRKDIST =		${WRKDIR}/clipboard-win-5.4.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/clipboard-win-5.4.1.tar.gz \
		${PREFIX}/share/modcargo-crates/clipboard-win-5.4.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=clipboard-win VERSION=5.4.1" > \
		${PREFIX}/share/modcargo-crates/clipboard-win-5.4.1.meta

.include <bsd.port.mk>
