# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: objc2-encode 4.1.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-objc2_encode_4_1_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/objc2-encode
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/objc2-encode/
DISTFILES =		objc2-encode-4.1.0.tar.gz
WRKDIST =		${WRKDIR}/objc2-encode-4.1.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/objc2-encode-4.1.0.tar.gz \
		${PREFIX}/share/modcargo-crates/objc2-encode-4.1.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=objc2-encode VERSION=4.1.0" > \
		${PREFIX}/share/modcargo-crates/objc2-encode-4.1.0.meta

.include <bsd.port.mk>
