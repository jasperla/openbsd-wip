# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-result 0.3.4

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_result_0_3_4-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-result
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		windows-result-0.3.4.tar.gz{windows-result/0.3.4/download}
WRKDIST =		${WRKDIR}/windows-result-0.3.4

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-result-0.3.4.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-result-0.3.4.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-result VERSION=0.3.4" > \
		${PREFIX}/share/modcargo-crates/windows-result-0.3.4.meta

.include <bsd.port.mk>
