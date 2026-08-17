# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: web-sys 0.3.91

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-web_sys_0_3_91-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/web-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		web-sys-0.3.91.tar.gz{web-sys/0.3.91/download}
WRKDIST =		${WRKDIR}/web-sys-0.3.91

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/web-sys-0.3.91.tar.gz \
		${PREFIX}/share/modcargo-crates/web-sys-0.3.91.tar.gz
	@echo "SOURCE_ONLY=1 NAME=web-sys VERSION=0.3.91" > \
		${PREFIX}/share/modcargo-crates/web-sys-0.3.91.meta

.include <bsd.port.mk>
