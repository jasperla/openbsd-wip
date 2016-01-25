# $OpenBSD$
COMMENT = package manager for Rust language

CARGO_VERSION =		0.8.0
CRATESIO_INDEX =	327db553f3ea4dbba48a9f74b663e5bf09461250

DISTNAME =	cargo-${CARGO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://doc.crates.io/

MAINTAINER =	Sebastien Marie <semarie@openbsd.org>

# cargo is dual licencied MIT/Apache-2.0
# third-parties (detail below):
#  - MIT
#  - Unlicense/MIT
#  - MIT/Apache-2.0
#  - MPL-2.0
#  - one with no indication of licence XXX
PERMIT_PACKAGE_CDROM = TODO
PERMIT_PACKAGE_FTP   = TODO
PERMIT_DISTFILES_FTP = TODO

WANTLIB = c crypto curl m pthread ssh2 ssl z

DIST_SUBDIR =	cargo
MASTER_SITES =	https://github.com/rust-lang/cargo/archive/
DISTFILES =	cargo-${CARGO_VERSION}.tar.gz{${CARGO_VERSION}.tar.gz}

MASTER_SITES0 =	https://github.com/rust-lang/crates.io-index/archive/
DISTFILES +=	crates.io-index-${CRATESIO_INDEX}.tar.gz{${CRATESIO_INDEX}.tar.gz}:0

CRATES +=	advapi32-sys-0.1.2		# MIT
CRATES +=	aho-corasick-0.4.0		# Unlicense/MIT
CRATES +=	bitflags-0.1.1			# MIT/Apache-2.0
CRATES +=	bufstream-0.1.1			# MIT/Apache-2.0
CRATES +=	cmake-0.1.12			# MIT/Apache-2.0
CRATES +=	crossbeam-0.1.6			# MIT/Apache-2.0
CRATES +=	curl-0.2.14			# MIT
CRATES +=	curl-sys-0.1.29			# MIT
CRATES +=	docopt-0.6.78			# Unlicense/MIT
CRATES +=	env_logger-0.3.2		# MIT/Apache-2.0
CRATES +=	filetime-0.1.8			# MIT/Apache-2.0
CRATES +=	flate2-0.2.11			# MIT/Apache-2.0
CRATES +=	gcc-0.3.21			# MIT/Apache-2.0
CRATES +=	gdi32-sys-0.1.1			# MIT
CRATES +=	git2-0.3.3			# MIT/Apache-2.0
CRATES +=	git2-curl-0.3.0			# MIT/Apache-2.0
CRATES +=	glob-0.2.10			# MIT/Apache-2.0
CRATES +=	hamcrest-0.1.0			# XXX no license indication
CRATES +=	kernel32-sys-0.1.4		# MIT
CRATES +=	kernel32-sys-0.2.1		# MIT
CRATES +=	libc-0.2.4			# MIT/Apache-2.0
CRATES +=	libgit2-sys-0.3.8		# MIT/Apache-2.0
CRATES +=	libressl-pnacl-sys-2.1.6	# MIT
CRATES +=	libssh2-sys-0.1.34		# MIT/Apache-2.0
CRATES +=	libz-sys-1.0.0			# MIT/Apache-2.0
CRATES +=	log-0.3.4			# MIT/Apache-2.0
CRATES +=	matches-0.1.2			# MIT
CRATES +=	memchr-0.1.7			# Unlicense/MIT
CRATES +=	miniz-sys-0.1.7			# MIT/Apache-2.0
CRATES +=	num-0.1.29			# MIT/Apache-2.0
CRATES +=	num_cpus-0.2.10			# MIT
CRATES +=	openssl-sys-0.7.4		# MIT
CRATES +=	pkg-config-0.3.6		# MIT/Apache-2.0
CRATES +=	pnacl-build-helper-1.4.10	# MPL-2.0
CRATES +=	rand-0.3.13			# MIT/Apache-2.0
CRATES +=	regex-0.1.44			# MIT/Apache-2.0
CRATES +=	regex-syntax-0.2.2		# MIT/Apache-2.0
CRATES +=	rustc-serialize-0.3.16		# MIT/Apache-2.0
CRATES +=	semver-0.2.0			# MIT/Apache-2.0
CRATES +=	strsim-0.3.0			# MIT
CRATES +=	tar-0.3.2			# MIT/Apache-2.0
CRATES +=	tempdir-0.3.4			# MIT/Apache-2.0
CRATES +=	term-0.2.14			# MIT/Apache-2.0
CRATES +=	time-0.1.34			# MIT/Apache-2.0
CRATES +=	toml-0.1.25			# MIT/Apache-2.0
CRATES +=	url-0.2.38			# MIT/Apache-2.0
CRATES +=	user32-sys-0.1.2		# MIT
CRATES +=	uuid-0.1.18			# MIT/Apache-2.0
CRATES +=	winapi-0.2.5			# MIT
CRATES +=	winapi-build-0.1.1		# MIT
CRATES +=	ws2_32-sys-0.2.1		# MIT

MASTER_SITES1 =	https://crates.io/api/v1/crates/
.for _crate in ${CRATES}
DISTFILES +=	${_crate}.tar.gz{${_crate:C/-[^-]*$//}/${_crate:C/^.*-//}/download}:1
.endfor

MODULES =	lang/python
MODPY_RUNDEP =	No

USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/cargo/bootstrap \
		devel/libgit2/libgit2 \
		devel/cmake \
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
