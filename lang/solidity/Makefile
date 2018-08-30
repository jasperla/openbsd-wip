# $OpenBSD$
COMMENT =	high-level language designed to target the Ethereum VM

V=0.4.24
DISTNAME =	solidity_$V
PKGNAME =	solidity-$V

CATEGORIES =	lang

HOMEPAGE =	https://solidity.readthedocs.io

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt

MASTER_SITES =		https://github.com/ethereum/solidity/releases/download/v$V/

MODULES =		devel/cmake

LIB_DEPENDS =		devel/boost

NO_TEST =		Yes

.include <bsd.port.mk>
