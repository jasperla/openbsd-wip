COMMENT =		version control system based on theory of patches

UPSTREAM_VERSION =	1.0.0-beta.8
V =			${UPSTREAM_VERSION:S/-beta./beta/}
DISTFILES =		pijul-${V}.tar.gz{pijul/${UPSTREAM_VERSION}/download}
PKGNAME =		pijul-${V}
SITES =			${SITES.cargo}
WRKSRC =		${WRKDIST}/pijul-${UPSTREAM_VERSION}

HOMEPAGE =		https://pijul.org/

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto git2 m ssh2 sodium ssl zstd

MODULES =		devel/cargo
MODCARGO_FEATURES =	git

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

LIB_DEPENDS =		archivers/zstd \
			devel/libgit2/libgit2 \
			security/libssh2 \
			security/libsodium


.include "crates.inc"

.include <bsd.port.mk>
