# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: alacritty_terminal 0.26.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-alacritty_terminal_0_26_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/alacritty_terminal
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		alacritty_terminal-0.26.0.tar.gz{alacritty_terminal/0.26.0/download}
WRKDIST =		${WRKDIR}/alacritty_terminal-0.26.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/alacritty_terminal-0.26.0.tar.gz \
		${PREFIX}/share/modcargo-crates/alacritty_terminal-0.26.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=alacritty_terminal VERSION=0.26.0" > \
		${PREFIX}/share/modcargo-crates/alacritty_terminal-0.26.0.meta

.include <bsd.port.mk>
