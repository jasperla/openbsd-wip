# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: schannel 0.1.28

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-schannel_0_1_28-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/schannel
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/schannel/
DISTFILES =		schannel-0.1.28.tar.gz
WRKDIST =		${WRKDIR}/schannel-0.1.28

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/schannel-0.1.28.tar.gz \
		${PREFIX}/share/modcargo-crates/schannel-0.1.28.tar.gz
	@echo "SOURCE_ONLY=1 NAME=schannel VERSION=0.1.28" > \
		${PREFIX}/share/modcargo-crates/schannel-0.1.28.meta

.include <bsd.port.mk>
