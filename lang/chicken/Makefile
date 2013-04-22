# $OpenBSD: Makefile,v 1.17 2011/03/09 06:23:35 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	practical and portable Scheme system

DISTNAME=	chicken-4.8.0.3

SHARED_LIBS=	chicken	6.0

CATEGORIES=	lang

HOMEPAGE=	http://www.call-cc.org/
MASTER_SITES=	http://code.call-cc.org/releases/4.8.0/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes

MAKE_FLAGS+=	PLATFORM=bsd C_COMPILER="${CC}" CXX_COMPILER="${CXX}" \
		C_COMPILER_OPTIONS="-DHAVE_CHICKEN_CONFIG_H" \
		C_COMPILER_OPTIMIZATION_OPTIONS="${CFLAGS}" \
		LIBchicken_VERSION="${LIBchicken_VERSION}"

MAKE_FILE=	GNUmakefile

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

TEST_TARGET=	check
TEST_DEPENDS=	${BUILD_PKGPATH}

pre-build:
.if ${MACHINE_ARCH} == "hppa"
	perl -pi -e 's/C_STACK_GROWS_DOWNWARD 1/C_STACK_GROWS_DOWNWARD 0/g' ${WRKSRC}/Makefile.bsd
.endif

.include <bsd.port.mk>
