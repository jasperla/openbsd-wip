# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: landlock 0.4.4

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-landlock_0_4_4-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/landlock
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		landlock-0.4.4.tar.gz{landlock/0.4.4/download}
WRKDIST =		${WRKDIR}/landlock-0.4.4

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/landlock-0.4.4.tar.gz \
		${PREFIX}/share/modcargo-crates/landlock-0.4.4.tar.gz
	@echo "SOURCE_ONLY=1 NAME=landlock VERSION=0.4.4" > \
		${PREFIX}/share/modcargo-crates/landlock-0.4.4.meta

.include <bsd.port.mk>
