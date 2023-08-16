COMMENT =	Signal Messenger client for the terminal

GH_ACCOUNT =	boxdot
GH_PROJECT =	gurk-rs
GH_TAGNAME =	v0.4.0

CATEGORIES =	net

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# AGPL 3.0
PERMIT_PACKAGE =	Yes

# vendor files (see ${FILESDIR}/config)
MASTER_SITES0 =	https://codevoid.de/h/
DISTFILES +=	${DISTNAME}-vendorfiles${EXTRACT_SUFX}:0

MODULES =	devel/cargo

WANTLIB =	m ${MODCARGO_WANTLIB}

BUILD_DEPENDS =	devel/protobuf \
		security/rust-ring

CONFIGURE_STYLE =	cargo

SUBST_VARS =	LOCALBASE

post-patch:
	cd ${WRKDIR}/vendor && ${PATCH} \
		< ${FILESDIR}/notification.rs.patch

post-configure:
	sed -i '/opt-level/s,2,0,' ${WRKDIR}/.cargo/config
	cat ${FILESDIR}/config >> ${WRKDIR}/.cargo/config

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/gurk ${PREFIX}/bin/

vendor:
	sh ${FILESDIR}/create_vendor_tarball.sh ${GH_TAGNAME}

.include "crates.inc"

.include <bsd.port.mk>
