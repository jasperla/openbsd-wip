# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS = sparc64

COMMENT =	multiprotocol credentials bruteforcer, password enumerator

GH_ACCOUNT =	evilsocket
GH_PROJECT =	legba
GH_TAGNAME =	v0.11.0

CATEGORIES =	security

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd smbclient

LIB_DEPENDS+=	net/samba,-main

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

# Needed to build OpenSSL lib. with openssl-sys crate (feature "vendored")
MODCARGO_CRATES +=	openssl-src	300.5.1+3.5.1	# MIT/Apache-2.0

MODCARGO_CRATES_KEEP+=	libsqlite3-sys \
			openssl-src \
			openssl-sys

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
