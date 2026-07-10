COMMENT =		Deltachat JSON-RPC Server

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} ==	"amd64"
USE_NOEXECONLY =        Yes
.endif

PKGNAME =		deltachat-rpc-server-2.53.0

GH_ACCOUNT =		chatmail
GH_PROJECT =		core
GH_TAGNAME =		v2.53.0

CATEGORIES =		net

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} crypto m sqlcipher ssl

LIB_DEPENDS +=		databases/sqlcipher

MODULES =		devel/cargo

MAKE_ENV=		${MODCARGO_ENV}

CONFIGURE_STYLE =	cargo

MODCARGO_BUILD_ARGS =	-p deltachat-rpc-server

# Ensure system sqlcipher used on 7.9-release/-stable only
#MODCARGO_ENV +=		LIBSQLITE3_SYS_USE_PKG_CONFIG=1

MODCARGO_INSTALL_TARGET_PATHS = deltachat-rpc-server

# Prevent full rebuild on make fake
MODCARGO_INSTALL =	No

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/target/release/deltachat-rpc-server \
		${PREFIX}/bin/

# Tests require network access
MODCARGO_TEST =	No
# test output debugging if tests run
#MODCARGO_TEST_ARGS = -- --no-capture --test-threads 1

.include "crates.inc"

.include <bsd.port.mk>
