# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-collections 0.2.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_collections_0_2_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-collections
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		windows-collections-0.2.0.tar.gz{windows-collections/0.2.0/download}
WRKDIST =		${WRKDIR}/windows-collections-0.2.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-collections-0.2.0.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-collections-0.2.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-collections VERSION=0.2.0" > \
		${PREFIX}/share/modcargo-crates/windows-collections-0.2.0.meta

.include <bsd.port.mk>
