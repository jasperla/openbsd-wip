# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: alsa 0.9.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-alsa_0_9_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/alsa
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/alsa/
DISTFILES =		alsa-0.9.1.tar.gz
WRKDIST =		${WRKDIR}/alsa-0.9.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/alsa-0.9.1.tar.gz \
		${PREFIX}/share/modcargo-crates/alsa-0.9.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=alsa VERSION=0.9.1" > \
		${PREFIX}/share/modcargo-crates/alsa-0.9.1.meta

.include <bsd.port.mk>
