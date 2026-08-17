# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-link 0.1.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_link_0_1_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-link
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		windows-link-0.1.3.tar.gz{windows-link/0.1.3/download}
WRKDIST =		${WRKDIR}/windows-link-0.1.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-link-0.1.3.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-link-0.1.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-link VERSION=0.1.3" > \
		${PREFIX}/share/modcargo-crates/windows-link-0.1.3.meta

.include <bsd.port.mk>
