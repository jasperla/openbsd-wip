# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: winapi 0.3.9

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-winapi_0_3_9-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/winapi
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		winapi-0.3.9.tar.gz{winapi/0.3.9/download}
WRKDIST =		${WRKDIR}/winapi-0.3.9

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/winapi-0.3.9.tar.gz \
		${PREFIX}/share/modcargo-crates/winapi-0.3.9.tar.gz
	@echo "SOURCE_ONLY=1 NAME=winapi VERSION=0.3.9" > \
		${PREFIX}/share/modcargo-crates/winapi-0.3.9.meta

.include <bsd.port.mk>
