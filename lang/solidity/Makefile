# $OpenBSD$
COMMENT =	high-level language designed to target the Ethereum VM

V=0.4.24
DISTNAME =	solidity_$V
PKGNAME =	solidity-$V

CATEGORIES =	lang

HOMEPAGE =	https://solidity.readthedocs.io

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes


# TODO: "make port-lib-depends-check" complains about boost
WANTLIB = ${COMPILER_LIBCXX} c m

MASTER_SITES =		https://github.com/ethereum/solidity/releases/download/v$V/

MODULES =		devel/cmake

NO_TEST =		Yes

.include <bsd.port.mk>
