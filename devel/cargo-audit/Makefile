# $OpenBSD: Makefile,v 1.3 2021/09/03 18:38:55 abieber Exp $

COMMENT =		audit Cargo.lock files for security vulnerabilities

CRATE =			cargo-audit
V =			0.15.0
PKGNAME =		${CRATE}-${V}

DISTFILES =		${PKGNAME}${EXTRACT_SUFX}{${CRATE}/${V}/download}

MASTER_SITES =		https://crates.io/api/v1/crates/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RustSec/rustsec/tree/main/cargo-audit

# Apache 2/MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		devel/cargo

WRKSRC =		${WRKDIR}/${PKGNAME}

.include "crates.inc"

.include <bsd.port.mk>
