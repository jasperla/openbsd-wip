# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wit-component 0.244.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wit_component_0_244_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wit-component
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/wit-component/
DISTFILES =		wit-component-0.244.0.tar.gz
WRKDIST =		${WRKDIR}/wit-component-0.244.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wit-component-0.244.0.tar.gz \
		${PREFIX}/share/modcargo-crates/wit-component-0.244.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wit-component VERSION=0.244.0" > \
		${PREFIX}/share/modcargo-crates/wit-component-0.244.0.meta

.include <bsd.port.mk>
