# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: jni 0.21.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-jni_0_21_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/jni
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		jni-0.21.1.tar.gz{jni/0.21.1/download}
WRKDIST =		${WRKDIR}/jni-0.21.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/jni-0.21.1.tar.gz \
		${PREFIX}/share/modcargo-crates/jni-0.21.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=jni VERSION=0.21.1" > \
		${PREFIX}/share/modcargo-crates/jni-0.21.1.meta

.include <bsd.port.mk>
