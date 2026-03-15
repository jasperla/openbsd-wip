COMMENT =	Signal Messenger client for the terminal

DIST_TUPLE =	github boxdot gurk-rs v0.9.0 .

CATEGORIES =	net

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# AGPL 3.0
PERMIT_PACKAGE =	Yes

# vendor files for git-sourced dependencies (see ${FILESDIR}/config)
SITES.cv =	https://codevoid.de/h/
DISTFILES.cv +=	${DISTNAME}-vendorfiles${EXTRACT_SUFX}

MODULES =	devel/cargo

WANTLIB =	m ${MODCARGO_WANTLIB}

BUILD_DEPENDS =	${MODCARGO_BUILD_DEPENDS} \
		devel/protobuf

CONFIGURE_STYLE =	cargo

post-extract:
	# Move git-sourced vendor crates into the cargo vendor directory
	mkdir -p ${MODCARGO_VENDOR_DIR}
	for d in curve25519-dalek curve25519-dalek-derive \
	    libsignal-account-keys libsignal-core libsignal-protocol \
	    libsignal-service libsqlite3-sys poksho presage \
	    presage-store-sqlite signal-crypto spqr sqlcipher-crypto-provider \
	    sqlx sqlx-core sqlx-macros sqlx-macros-core sqlx-mysql \
	    sqlx-postgres sqlx-sqlite usernames zkcredential zkgroup; do \
		mv ${WRKDIR}/vendor/$$d ${MODCARGO_VENDOR_DIR}/; \
	done

post-configure:
	cat ${FILESDIR}/config >> ${WRKDIR}/.cargo/config.toml

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gurk ${PREFIX}/bin/

vendor:
	sh ${FILESDIR}/create_vendor_tarball.sh "${DIST_TUPLE}"

.include "crates.inc"

.include <bsd.port.mk>
