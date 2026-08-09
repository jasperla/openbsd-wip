# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: ashpd 0.10.3

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-ashpd_0_10_3-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/ashpd
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/ashpd/
DISTFILES =		ashpd-0.10.3.tar.gz
WRKDIST =		${WRKDIR}/ashpd-0.10.3

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/ashpd-0.10.3.tar.gz \
		${PREFIX}/share/modcargo-crates/ashpd-0.10.3.tar.gz
	@echo "SOURCE_ONLY=1 NAME=ashpd VERSION=0.10.3" > \
		${PREFIX}/share/modcargo-crates/ashpd-0.10.3.meta

.include <bsd.port.mk>
