# $OpenBSD$
COMMENT = package manager for Rust language

CARGO_VERSION =		0.8.0
CRATESIO_VERSION =	0.1.0

DISTNAME =	cargo-${CARGO_VERSION}
PKGNAME =	${DISTNAME}
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
MASTER_SITES0 =	http://semarie.free.fr/cargo/
DISTFILES +=	cargo-deps-${CARGO_VERSION}.tar.gz:0

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

MAKE_ENV +=	CARGO_HOME="${WRKDIR}/cargo-deps-${CARGO_VERSION}" \
		VERBOSE=1 \
		LIBSSH2_SYS_USE_PKG_CONFIG=1

post-extract:
	ln -fs "${WRKDIR}/crates-io-${CRATESIO_VERSION}" \
		"${WRKDIST}/src/crates-io"
	ln -fs "${WRKDIR}/cargo-deps-${CARGO_VERSION}/Cargo.lock" "${WRKDIST}"

post-install:
	rm -rf ${PREFIX}/lib/rustlib
	rm -rf ${PREFIX}/man ; mv ${PREFIX}/share/man ${PREFIX}/man
	mv ${PREFIX}/etc ${PREFIX}/share/examples/cargo

.include <bsd.port.mk>
