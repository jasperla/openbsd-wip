# $OpenBSD$
COMMENT = package manager for Rust language

CARGO_VERSION =		0.8.0
CRATESIO_VERSION =	0.1.0
CRATESIO_INDEX =	327db553f3ea4dbba48a9f74b663e5bf09461250

DISTNAME =	cargo-${CARGO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://doc.crates.io/

MAINTAINER =	Sebastien Marie <semarie@openbsd.org>

# TODO
PERMIT_PACKAGE_CDROM = TODO
PERMIT_PACKAGE_FTP   = TODO
PERMIT_DISTFILES_FTP = TODO

WANTLIB = c crypto curl m pthread ssh2 ssl z

DIST_SUBDIR =	cargo
MASTER_SITES =	https://crates.io/api/v1/crates/
DISTFILES =	cargo-${CARGO_VERSION}.tar.gz{cargo/${CARGO_VERSION}/download} \
		crates-io-${CRATESIO_VERSION}.tar.gz{crates-io/${CRATESIO_VERSION}/download}

MASTER_SITES0 =	https://github.com/rust-lang/crates.io-index/archive/
DISTFILES +=	crates.io-index-${CRATESIO_INDEX}.tar.gz{${CRATESIO_INDEX}.tar.gz}:0

CRATES = \
	advapi32-sys-0.1.2 \
	aho-corasick-0.4.0 \
	bitflags-0.1.1 \
	bufstream-0.1.1 \
	cmake-0.1.12 \
	crossbeam-0.1.6 \
	curl-0.2.16 \
	curl-sys-0.1.32 \
	docopt-0.6.78 \
	env_logger-0.3.2 \
	filetime-0.1.9 \
	flate2-0.2.12 \
	gcc-0.3.21 \
	gdi32-sys-0.1.1 \
	git2-0.3.4 \
	git2-curl-0.3.0 \
	glob-0.2.10 \
	hamcrest-0.1.0 \
	kernel32-sys-0.1.4 \
	kernel32-sys-0.2.1 \
	libc-0.2.5 \
	libgit2-sys-0.3.9 \
	libressl-pnacl-sys-2.1.6 \
	libssh2-sys-0.1.34 \
	libz-sys-1.0.0 \
	log-0.3.5 \
	matches-0.1.2 \
	memchr-0.1.7 \
	miniz-sys-0.1.7 \
	nom-1.1.0 \
	num-0.1.30 \
	num_cpus-0.2.10 \
	openssl-sys-0.7.5 \
	pkg-config-0.3.6 \
	pnacl-build-helper-1.4.10 \
	rand-0.3.13 \
	regex-0.1.48 \
	regex-syntax-0.2.2 \
	rustc-serialize-0.3.16 \
	semver-0.2.1 \
	strsim-0.3.0 \
	tar-0.3.3 \
	tempdir-0.3.4 \
	term-0.2.14 \
	time-0.1.34 \
	toml-0.1.25 \
	url-0.2.38 \
	user32-sys-0.1.2 \
	uuid-0.1.18 \
	winapi-0.2.5 \
	winapi-build-0.1.1 \
	ws2_32-sys-0.2.1

.for _crate in ${CRATES}
DISTFILES +=	${_crate}.tar.gz{${_crate:C/-[^-]*$//}/${_crate:C/^.*-//}/download}
.endfor

MODULES =	lang/python
MODPY_RUNDEP =	No

USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/cargo/bootstrap \
		devel/libgit2/libgit2 \
		lang/rust>=1.5.0p0

LIB_DEPENDS =	net/curl \
		security/libssh2

RUN_DEPENDS =	lang/rust

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${LOCALBASE} \
			--mandir=${LOCALBASE}/man \
			--sysconfdir=${LOCALBASE}/share/examples/cargo \
			--local-rust-root=${LOCALBASE} \
			--local-cargo=${LOCALBASE}/libexec/cargo-bootstrap/cargo

MAKE_ENV +=	CARGO_HOME=${WRKDIR}/cargo-home \
		VERBOSE=1 \
		LIBSSH2_SYS_USE_PKG_CONFIG=1

post-extract:
	cp files/Cargo.lock ${WRKDIST}
	mv ${WRKDIR}/crates-io-${CRATESIO_VERSION} ${WRKDIST}/src/crates-io
	mkdir -p ${WRKDIR}/cargo-home/registry/{cache,index,src}
	mkdir ${WRKDIR}/cargo-home/registry/{cache,src}/github.com-0a35038f75765ae4
	mv ${WRKDIR}/crates.io-index-${CRATESIO_INDEX} \
		${WRKDIR}/cargo-home/registry/index/github.com-0a35038f75765ae4
.for _crate in ${CRATES}
	mv ${WRKDIR}/${_crate} ${WRKDIR}/cargo-home/registry/src/github.com-0a35038f75765ae4
	touch ${WRKDIR}/cargo-home/registry/src/github.com-0a35038f75765ae4/${_crate}/.cargo-ok
	touch ${WRKDIR}/cargo-home/registry/cache/github.com-0a35038f75765ae4/${_crate}.crate
.endfor

post-install:
	rm -rf ${PREFIX}/lib/rustlib
	rm -rf ${PREFIX}/man ; mv ${PREFIX}/share/man ${PREFIX}/man
	mv ${PREFIX}/etc ${PREFIX}/share/examples/cargo

.include <bsd.port.mk>
