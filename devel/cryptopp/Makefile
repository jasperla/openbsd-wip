# $OpenBSD: Makefile,v 1.21 2018/01/21 20:25:48 juanfra Exp $

COMMENT =	C++ library of cryptographic algorithms

DISTNAME = 	cryptopp700
PKGNAME = 	cryptopp-7.0

HOMEPAGE =	https://www.cryptopp.com/

CATEGORIES =	devel security

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# individual files are public domain
# compilation is licensed under the Boost Software License 1.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.cryptopp.com/

EXTRACT_SUFX =	.zip

#WANTLIB +=	m pthread ${COMPILER_LIBCXX}

SHARED_LIBS = 	cryptopp	5.0

USE_GMAKE = 	Yes

MAKE_FLAGS +=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -Wno-unused \
			-DCRYPTOPP_DISABLE_SSSE3 \
			-DCRYPTOPP_DISABLE_AESNI \
			-DCRYPTOPP_NO_UNALIGNED_DATA_ACCESS \
			-DNDEBUG -fPIC" \
		LDFLAGS="-lpthread" \
		PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}

MAKE_FILE = 	${WRKDIR}/GNUmakefile

TEST_FLAGS += WRKDIST=${WRKDIST}

WRKDIST =	${WRKDIR}

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib
	${SUBST_DATA} ${FILESDIR}/cryptopp.pc \
		${PREFIX}/lib/pkgconfig/cryptopp.pc

.include <bsd.port.mk>
