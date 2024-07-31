# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	pattern matching swiss knife for malware researchers

GH_ACCOUNT =	VirusTotal
GH_PROJECT =	yara-x
GH_TAGNAME =	v0.6.0

CATEGORIES =	security

# https://github.com/VirusTotal/yara-x
HOMEPAGE =	https://virustotal.github.io/yara-x/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		archivers/zstd

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

# Needed for link with crate linkme
# See https://github.com/dtolnay/linkme/issues/49
MODCARGO_RUSTFLAGS +=	-Clink-arg=-fuse-ld=lld \
			-Clink-arg=-Wl,-z,nostart-stop-gc

SEPARATE_BUILD =	Yes

# fix files permissions for str_stack crate
pre-patch:
	find ${MODCARGO_VENDOR_DIR}/str_stack-0.1.0 -type f -exec chmod 644 {} +

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/yr ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
