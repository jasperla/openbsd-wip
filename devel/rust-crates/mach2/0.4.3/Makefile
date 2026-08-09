# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: mach2 0.4.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-mach2_0_4_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/mach2
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/mach2/
DISTFILES =		mach2-0.4.3.tar.gz
WRKDIST =		${WRKDIR}/mach2-0.4.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/mach2-0.4.3.tar.gz \
		${PREFIX}/share/modcargo-crates/mach2-0.4.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=mach2 VERSION=0.4.3" > \
		${PREFIX}/share/modcargo-crates/mach2-0.4.3.meta

.include <bsd.port.mk>
