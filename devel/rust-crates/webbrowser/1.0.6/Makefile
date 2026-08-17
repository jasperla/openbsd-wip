# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: webbrowser 1.0.6

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-webbrowser_1_0_6-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/webbrowser
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		webbrowser-1.0.6.tar.gz{webbrowser/1.0.6/download}
WRKDIST =		${WRKDIR}/webbrowser-1.0.6

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/webbrowser-1.0.6.tar.gz \
		${PREFIX}/share/modcargo-crates/webbrowser-1.0.6.tar.gz
	@echo "SOURCE_ONLY=1 NAME=webbrowser VERSION=1.0.6" > \
		${PREFIX}/share/modcargo-crates/webbrowser-1.0.6.meta

.include <bsd.port.mk>
