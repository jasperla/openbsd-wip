# $OpenBSD$

# ---------------------------------------------------------------------------
# POC: one registry crate peeled out of grok-build for pkg_add reuse.
#
# Careful package key (what dpb / dependents pin):
#   rust-${CRATE_NAME}-${CRATE_VERSION}[-${CRATE_FEAT_TAG}][-p${REVISION}]
#
# Today: rust-scopeguard-1.2.0  (default features = use_std → CRATE_FEAT_TAG=default)
#
# When scopeguard's *sources* change: bump CRATE_VERSION (or REVISION for local
# patches) → new PKGNAME → dependents that BUILD_DEPENDS on the old key must
# be updated and rebuilt (see devel/grok-build-test).
#
# When only a *dependent's* code changes: this package stays installed; dpb
# skips it. That is the "missing key → rebuild dep" model.
# ---------------------------------------------------------------------------

COMMENT =	Rust scopeguard crate (prebuilt dep POC for grok-build-test)

CRATE_NAME =		scopeguard
CRATE_VERSION =		1.2.0
# default feature set is use_std; encode in key so a future "no_std" flavor
# cannot collide under the same PKGNAME.
CRATE_FEAT_TAG =	default

V =			${CRATE_VERSION}
PKGNAME =		rust-${CRATE_NAME}-${V}
# Uncomment to force features into the package name even for default:
# FULLPKGNAME =	rust-${CRATE_NAME}-${V}-${CRATE_FEAT_TAG}

CATEGORIES =		devel
HOMEPAGE =		https://docs.rs/scopeguard/
MAINTAINER =		Todd T. Fries <todd@fries.net>

# MIT OR Apache-2.0
PERMIT_PACKAGE =	Yes

# Same on-disk distfile path as MODCARGO uses in grok-build (shared DISTDIR).
DIST_SUBDIR =		cargo
# cargo.port.mk requires this whenever DIST_SUBDIR is set.
MODCARGO_DIST_SUBDIR =	cargo
SITES =			https://static.crates.io/crates/${CRATE_NAME}/
DISTFILES =		${CRATE_NAME}-${V}.tar.gz
WRKDIST =		${WRKDIR}/${CRATE_NAME}-${V}

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# Expand ${MACHINE_ARCH} in PLIST (arch-specific rlib path).
SUBST_VARS +=		MACHINE_ARCH

# Leaf crate: no crates.io dependencies. Empty MODCARGO_CRATES — we build the
# extracted crate as WRKSRC, not a workspace member pulled via vendor.
MODCARGO_CRATES =
MODCARGO_INSTALL =	No

# default features (use_std); keep explicit for key documentation
MODCARGO_NO_DEFAULT_FEATURES =	No

# Install layout consumed by devel/grok-build-test:
#   share/rust-crates/scopeguard-1.2.0/     path-dep sources (offline cargo)
#   lib/rust-crates/${ARCH}/scopeguard-1.2.0-default/
#       libscopeguard.rlib                  prebuilt artifact (optional seed)
#   share/rust-crates/scopeguard-1.2.0/CRATE_KEY
#       machine-readable unit key
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/src
	${INSTALL_DATA} ${WRKSRC}/Cargo.toml \
		${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/
	${INSTALL_DATA} ${WRKSRC}/src/lib.rs \
		${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/src/
.for _f in LICENSE-APACHE LICENSE-MIT README.md
	@if [ -f ${WRKSRC}/${_f} ]; then \
		${INSTALL_DATA} ${WRKSRC}/${_f} \
			${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/; \
	fi
.endfor
	# Unit key stamp (name + version + feature-tag)
	@echo "CRATE_NAME=${CRATE_NAME}" \
		> ${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/CRATE_KEY
	@echo "CRATE_VERSION=${V}" \
		>> ${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/CRATE_KEY
	@echo "CRATE_FEAT_TAG=${CRATE_FEAT_TAG}" \
		>> ${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/CRATE_KEY
	@echo "CRATE_KEY=rust-${CRATE_NAME}-${V}-${CRATE_FEAT_TAG}" \
		>> ${PREFIX}/share/rust-crates/${CRATE_NAME}-${V}/CRATE_KEY
	# Prebuilt rlib (arch-specific). Consumers may sccache-hit the same
	# rustc line or, later, seed CARGO_TARGET_DIR from this path.
	${INSTALL_DATA_DIR} \
		${PREFIX}/lib/rust-crates/${MACHINE_ARCH}/${CRATE_NAME}-${V}-${CRATE_FEAT_TAG}
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/lib${CRATE_NAME}.rlib \
		${PREFIX}/lib/rust-crates/${MACHINE_ARCH}/${CRATE_NAME}-${V}-${CRATE_FEAT_TAG}/

.include <bsd.port.mk>
