# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: redox_users 0.4.6

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-redox_users_0_4_6-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/redox_users
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		redox_users-0.4.6.tar.gz{redox_users/0.4.6/download}
WRKDIST =		${WRKDIR}/redox_users-0.4.6

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/redox_users-0.4.6.tar.gz \
		${PREFIX}/share/modcargo-crates/redox_users-0.4.6.tar.gz
	@echo "SOURCE_ONLY=1 NAME=redox_users VERSION=0.4.6" > \
		${PREFIX}/share/modcargo-crates/redox_users-0.4.6.meta

.include <bsd.port.mk>
