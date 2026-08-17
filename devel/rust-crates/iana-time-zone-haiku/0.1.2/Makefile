# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: iana-time-zone-haiku 0.1.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-iana_time_zone_haiku_0_1_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/iana-time-zone-haiku
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		iana-time-zone-haiku-0.1.2.tar.gz{iana-time-zone-haiku/0.1.2/download}
WRKDIST =		${WRKDIR}/iana-time-zone-haiku-0.1.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/iana-time-zone-haiku-0.1.2.tar.gz \
		${PREFIX}/share/modcargo-crates/iana-time-zone-haiku-0.1.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=iana-time-zone-haiku VERSION=0.1.2" > \
		${PREFIX}/share/modcargo-crates/iana-time-zone-haiku-0.1.2.meta

.include <bsd.port.mk>
