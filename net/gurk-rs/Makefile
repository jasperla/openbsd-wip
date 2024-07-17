COMMENT =	Signal Messenger client for the terminal

DIST_TUPLE =	github boxdot gurk-rs v0.4.3 .

CATEGORIES =	net

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# AGPL 3.0
PERMIT_PACKAGE =	Yes

# vendor files (see ${FILESDIR}/config)
SITES.cv =	https://codevoid.de/h/
DISTFILES.cv +=	${DISTNAME}-vendorfiles${EXTRACT_SUFX}

MODULES =	devel/cargo

MODCARGO_CRATES_KEEP =	libsqlite3-sys

WANTLIB =	m ${MODCARGO_WANTLIB}

BUILD_DEPENDS =	${MODCARGO_BUILD_DEPENDS} \
		devel/protobuf \
		security/rust-ring

CONFIGURE_STYLE =	cargo

SUBST_VARS =	LOCALBASE

# post-patch:
# 	cd ${WRKDIR}/vendor && ${PATCH} \
# 		< ${FILESDIR}/notification.rs.patch

post-configure:
	sed -i '/opt-level/s,2,0,' ${WRKDIR}/.cargo/config.toml
	cat ${FILESDIR}/config >> ${WRKDIR}/.cargo/config.toml

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gurk ${PREFIX}/bin/

vendor:
	sh ${FILESDIR}/create_vendor_tarball.sh "${DIST_TUPLE}"

.include "crates.inc"

.include <bsd.port.mk>
