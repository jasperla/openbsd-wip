# XXX needs eventfd, pw_deinit...

COMMENT=		XXX

PW_PROJECT=		helvum
PW_VERSION=		0.3.4
# needed because the devel/cargo module resets the list
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		audio

MODULES=		devel/cargo

BUILD_DEPENDS=		devel/llvm
# find libclang
MODCARGO_ENV=		LIBCLANG_PATH=${LOCALBASE}/lib

LIB_DEPENDS=		multimedia/pipewire/pipewire \
			x11/gtk+4

pre-configure:
	${MODCARGO_configure}

pre-build:
	${MODCARGO_BUILD_TARGET}

.include "crates.inc"

.include <bsd.port.mk>
