# $OpenBSD$

COMMENT = package manager for Rust language (bootstrap)

CARGO_VERSION = 0.4.0
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

DIST_SUBDIR = cargo-bootstrap

# We can't use GH_* because we need multiple GitHub sources.
MASTER_SITES = https://github.com/dhuseby/cargo-bootstrap/archive/
CB_COMMIT    = 08fe920504fe7165e7404574a5153b0309100e98
DISTFILES   += cargo-bootstrap-${CB_COMMIT}.tar.gz{${CB_COMMIT}.tar.gz}
WRKDIST      = ${WRKDIR}/cargo-bootstrap-${CB_COMMIT}

MASTER_SITES0 = https://github.com/rust-lang/crates.io-index/archive/
CRATES_COMMIT = f2df62f243781ce14973c03d6e917b4f683cdfe5
DISTFILES    += crates.io-index-${CRATES_COMMIT}.tar.gz{${CRATES_COMMIT}.tar.gz}:0

MASTER_SITES1 = https://crates.io/api/v1/crates/
DISTFILES    += cargo-${CARGO_VERSION}.tar.gz{cargo/${CARGO_VERSION}/download}:1
DISTFILES    += advapi32-sys-0.1.2.tar.gz{advapi32-sys/0.1.2/download}:1
DISTFILES    += aho-corasick-0.3.0.tar.gz{aho-corasick/0.3.0/download}:1
DISTFILES    += bitflags-0.1.1.tar.gz{bitflags/0.1.1/download}:1
DISTFILES    += crates-io-0.1.0.tar.gz{crates-io/0.1.0/download}:1
DISTFILES    += curl-0.2.10.tar.gz{curl/0.2.10/download}:1
DISTFILES    += curl-sys-0.1.25.tar.gz{curl-sys/0.1.25/download}:1
DISTFILES    += docopt-0.6.67.tar.gz{docopt/0.6.67/download}:1
DISTFILES    += encoding-0.2.32.tar.gz{encoding/0.2.32/download}:1
DISTFILES    += encoding-index-japanese-1.20141219.5.tar.gz{encoding-index-japanese/1.20141219.5/download}:1
DISTFILES    += encoding-index-korean-1.20141219.5.tar.gz{encoding-index-korean/1.20141219.5/download}:1
DISTFILES    += encoding-index-simpchinese-1.20141219.5.tar.gz{encoding-index-simpchinese/1.20141219.5/download}:1
DISTFILES    += encoding-index-singlebyte-1.20141219.5.tar.gz{encoding-index-singlebyte/1.20141219.5/download}:1
DISTFILES    += encoding-index-tradchinese-1.20141219.5.tar.gz{encoding-index-tradchinese/1.20141219.5/download}:1
DISTFILES    += encoding_index_tests-0.1.4.tar.gz{encoding_index_tests/0.1.4/download}:1
DISTFILES    += env_logger-0.3.1.tar.gz{env_logger/0.3.1/download}:1
DISTFILES    += filetime-0.1.4.tar.gz{filetime/0.1.4/download}:1
DISTFILES    += flate2-0.2.7.tar.gz{flate2/0.2.7/download}:1
DISTFILES    += gcc-0.3.10.tar.gz{gcc/0.3.10/download}:1
DISTFILES    += git2-0.2.13.tar.gz{git2/0.2.13/download}:1
DISTFILES    += git2-curl-0.2.4.tar.gz{git2-curl/0.2.4/download}:1
DISTFILES    += glob-0.2.10.tar.gz{glob/0.2.10/download}:1
DISTFILES    += kernel32-sys-0.1.2.tar.gz{kernel32-sys/0.1.2/download}:1
DISTFILES    += libc-0.1.9.tar.gz{libc/0.1.9/download}:1
DISTFILES    += libgit2-sys-0.2.20.tar.gz{libgit2-sys/0.2.20/download}:1
DISTFILES    += libssh2-sys-0.1.26.tar.gz{libssh2-sys/0.1.26/download}:1
DISTFILES    += libz-sys-0.1.6.tar.gz{libz-sys/0.1.6/download}:1
DISTFILES    += log-0.3.1.tar.gz{log/0.3.1/download}:1
DISTFILES    += matches-0.1.2.tar.gz{matches/0.1.2/download}:1
DISTFILES    += memchr-0.1.3.tar.gz{memchr/0.1.3/download}:1
DISTFILES    += miniz-sys-0.1.5.tar.gz{miniz-sys/0.1.5/download}:1
DISTFILES    += num-0.1.25.tar.gz{num/0.1.25/download}:1
DISTFILES    += num_cpus-0.2.6.tar.gz{num_cpus/0.2.6/download}:1
DISTFILES    += openssl-sys-0.6.4.tar.gz{openssl-sys/0.6.4/download}:1
DISTFILES    += pkg-config-0.3.5.tar.gz{pkg-config/0.3.5/download}:1
DISTFILES    += rand-0.3.8.tar.gz{rand/0.3.8/download}:1
DISTFILES    += regex-0.1.41.tar.gz{regex/0.1.41/download}:1
DISTFILES    += regex-syntax-0.2.0.tar.gz{regex-syntax/0.2.0/download}:1
DISTFILES    += rustc-serialize-0.3.15.tar.gz{rustc-serialize/0.3.15/download}:1
DISTFILES    += semver-0.1.19.tar.gz{semver/0.1.19/download}:1
DISTFILES    += serde-0.4.3.tar.gz{serde/0.4.3/download}:1
DISTFILES    += strsim-0.3.0.tar.gz{strsim/0.3.0/download}:1
DISTFILES    += tar-0.2.14.tar.gz{tar/0.2.14/download}:1
DISTFILES    += term-0.2.11.tar.gz{term/0.2.11/download}:1
DISTFILES    += threadpool-0.1.4.tar.gz{threadpool/0.1.4/download}:1
DISTFILES    += time-0.1.31.tar.gz{time/0.1.31/download}:1
DISTFILES    += toml-0.1.21.tar.gz{toml/0.1.21/download}:1
DISTFILES    += url-0.2.36.tar.gz{url/0.2.36/download}:1
DISTFILES    += winapi-0.1.23.tar.gz{winapi/0.1.23/download}:1
DISTFILES    += winapi-0.2.1.tar.gz{winapi/0.2.1/download}:1
DISTFILES    += winapi-build-0.1.0.tar.gz{winapi-build/0.1.0/download}:1

pre-configure:
	# XXX: This is fixed in upstream git, but not yet in a release.
	patch -d ${WRKDIR}/curl-sys-0.1.25 <files/curl-sys.patch

do-build:
	${WRKDIST}/bootstrap.py \
		--cargo-root ${WRKDIR}/cargo-${CARGO_VERSION} \
		--target-dir ${WRKDIR} \
		--crate-index ${WRKDIR}/crates.io-index-${CRATES_COMMIT} \
		--no-clean \
		--no-download \
		--no-git \
		--target x86_64-unknown-openbsd

do-install:
	mkdir -p ${WRKINST}${LOCALBASE}/libexec/cargo-bootstrap/
	cp ${WRKDIR}/cargo-"$$(echo ${CARGO_VERSION} | sed 's/\./_/g')" \
		${WRKINST}${LOCALBASE}/libexec/cargo-bootstrap/cargo

MODULES         = lang/python
MODPY_RUNDEP    = No # only the build script is python
MODPY_ADJ_FILES = bootstrap.py

BUILD_DEPENDS = devel/py-dulwich lang/rust textproc/py-toml
# TODO: BUILD_DEPENDS += devel/py-toml
LIB_DEPENDS   = net/curl security/libssh2

NO_TEST = Yes

.include <bsd.port.mk>
