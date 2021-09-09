# $OpenBSD: Makefile,v 1.3 2021/09/03 18:38:55 abieber Exp $

COMMENT =		audit Cargo.lock files for security vulnerabilities

# https://github.com/rustsec/rustsec/issues/429
V =			0.13.1
CRATE =			cargo-audit
PKGNAME =		${CRATE}-${V}

DISTFILES =		${PKGNAME}${EXTRACT_SUFX}{${CRATE}/${V}/download}

MASTER_SITES =		https://crates.io/api/v1/crates/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RustSec/rustsec/tree/main/cargo-audit

# Apache 2/MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto m pthread ssl

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

WRKSRC =		${WRKDIR}/${PKGNAME}

.include "crates.inc"

.include <bsd.port.mk>
