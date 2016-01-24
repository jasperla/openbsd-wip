# $OpenBSD$

COMMENT = package manager for Rust language (bootstrap)

CARGO_VERSION = 0.5.0
DISTNAME   = cargo-bootstrap-${CARGO_VERSION}
PKGNAME    = ${DISTNAME}
CATEGORIES = devel

HOMEPAGE = https://crates.io/

MAINTAINER = Steven McDonald <openbsd-ports@steven-mcdonald.id.au>

# This port includes code from a lot of different sources in order to
# bootstrap a working cargo (which can then be used to build individual
# ports later). There's no point trying to consider all the various
# licences for these sources for package distribution.
PERMIT_PACKAGE_CDROM = bootstrap only
PERMIT_PACKAGE_FTP   = bootstrap only
PERMIT_DISTFILES_FTP = bootstrap only

WANTLIB = c crypto curl m pthread ssh2 ssl z

DIST_SUBDIR = cargo

# We can't use GH_* because we need multiple GitHub sources.
MASTER_SITES = https://github.com/dhuseby/cargo-bootstrap/archive/
CB_COMMIT    = a9d60d470d0b27b7d1087c325f0f2944d27dfe37
DISTFILES   += cargo-bootstrap-${CB_COMMIT}.tar.gz{${CB_COMMIT}.tar.gz}
WRKDIST      = ${WRKDIR}/cargo-bootstrap-${CB_COMMIT}

MASTER_SITES0 = https://github.com/rust-lang/crates.io-index/archive/
CRATES_COMMIT = 82abe5d6678eb07c64742767203698b9870b73ab
DISTFILES    += crates.io-index-${CRATES_COMMIT}.tar.gz{${CRATES_COMMIT}.tar.gz}:0

CRATES += cargo-${CARGO_VERSION} \
	  advapi32-sys-0.1.2 \
	  aho-corasick-0.3.2 \
	  bitflags-0.1.1 \
	  cmake-0.1.4 \
	  crates-io-0.1.0 \
	  curl-0.2.11 \
	  curl-sys-0.1.25 \
	  docopt-0.6.72 \
	  encoding-0.2.32 \
	  encoding-index-japanese-1.20141219.5 \
	  encoding-index-korean-1.20141219.5 \
	  encoding-index-simpchinese-1.20141219.5 \
	  encoding-index-singlebyte-1.20141219.5 \
	  encoding-index-tradchinese-1.20141219.5 \
	  encoding_index_tests-0.1.4 \
	  env_logger-0.3.1 \
	  filetime-0.1.5 \
	  flate2-0.2.9 \
	  gcc-0.3.16 \
	  git2-0.2.14 \
	  git2-curl-0.2.4 \
	  glob-0.2.10 \
	  heapsize-0.1.2 \
	  heapsize_plugin-0.0.1 \
	  kernel32-sys-0.1.4 \
	  libc-0.1.10 \
	  libgit2-sys-0.2.20 \
	  libssh2-sys-0.1.30 \
	  libz-sys-0.1.8 \
	  log-0.3.2 \
	  matches-0.1.2 \
	  memchr-0.1.6 \
	  miniz-sys-0.1.6 \
	  num-0.1.27 \
	  num_cpus-0.2.6 \
	  openssl-sys-0.6.5 \
	  pkg-config-0.3.5 \
	  rand-0.3.11 \
	  regex-0.1.41 \
	  regex-syntax-0.2.2 \
	  rustc-serialize-0.3.16 \
	  semver-0.1.20 \
	  serde-0.5.3 \
	  serde-0.6.0 \
	  strsim-0.3.0 \
	  tar-0.3.1 \
	  term-0.2.11 \
	  threadpool-0.1.4 \
	  time-0.1.32 \
	  toml-0.1.22 \
	  url-0.2.37 \
	  winapi-0.2.4 \
	  winapi-build-0.1.1


MASTER_SITES1 = https://crates.io/api/v1/crates/
.for _crate in ${CRATES}
DISTFILES    += ${_crate}.tar.gz{${_crate:C/-[^-]*$//}/${_crate:C/^.*-//}/download}:1
.endfor

MAKE_ENV += LIBSSH2_SYS_USE_PKG_CONFIG=1

pre-configure:
	# XXX: This is fixed in upstream git, but not yet in a release.
	sed -i 's/-bitrig/-openbsd/' ${WRKDIR}/curl-sys-0.1.25/Cargo.toml
	# Remove "heapsize" and "heapsize_plugin" dependencies from "url"
	sed -i '/dependencies\.heapsize/,/^$$/d' ${WRKDIR}/url-0.2.37/Cargo.toml

do-build:
	env -i ${MAKE_ENV} ${WRKDIST}/bootstrap.py \
		--cargo-root ${WRKDIR}/cargo-${CARGO_VERSION} \
		--target-dir ${WRKDIR} \
		--crate-index ${WRKDIR}/crates.io-index-${CRATES_COMMIT} \
		--no-clean \
		--no-git \
		--target x86_64-unknown-openbsd

do-install:
	mkdir -p ${WRKINST}${LOCALBASE}/libexec/cargo-bootstrap/
	cp ${WRKDIR}/cargo-"$$(echo ${CARGO_VERSION} | sed 's/\./_/g')" \
		${WRKINST}${LOCALBASE}/libexec/cargo-bootstrap/cargo

MODULES         = lang/python
MODPY_RUNDEP    = No # only the build script is python
MODPY_ADJ_FILES = bootstrap.py

BUILD_DEPENDS = devel/libgit2/libgit2 \
		devel/py-dulwich \
		lang/rust>=1.5.0p0 \
		textproc/py-toml
LIB_DEPENDS   = net/curl \
		security/libssh2
RUN_DEPENDS   = lang/rust

NO_TEST = Yes

.include <bsd.port.mk>
