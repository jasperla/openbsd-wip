# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-result 0.1.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_result_0_1_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-result
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows-result/
DISTFILES =		windows-result-0.1.2.tar.gz
WRKDIST =		${WRKDIR}/windows-result-0.1.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-result-0.1.2.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-result-0.1.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-result VERSION=0.1.2" > \
		${PREFIX}/share/modcargo-crates/windows-result-0.1.2.meta

.include <bsd.port.mk>
