# $OpenBSD: Makefile,v 1.17 2011/03/09 06:23:35 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	practical and portable Scheme system

V=		4.7.0
DISTNAME=	chicken-$V

SHARED_LIBS=	chicken	0.0

CATEGORIES=	lang

HOMEPAGE=	http://www.call-cc.org/
MASTER_SITES=	http://code.call-cc.org/releases/$V/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

WANTLIB=		c m pthread

MAKE_FLAGS+=		PLATFORM=bsd C_COMPILER="${CC}" CXX_COMPILER="${CXX}" \
			C_COMPILER_OPTIONS="-DHAVE_CHICKEN_CONFIG_H" \
			C_COMPILER_OPTIMIZATION_OPTIONS="${CFLAGS}" \
			SONAME_VERSION=".${LIBchicken_VERSION}"

MAKE_FILE=		GNUmakefile

FAKE_FLAGS=		PREFIX=${TRUEPREFIX}

pre-build:
.if ${MACHINE_ARCH} == "hppa"
	perl -pi -e 's/C_STACK_GROWS_DOWNWARD 1/C_STACK_GROWS_DOWNWARD 0/g' ${WRKSRC}/Makefile.bsd
.endif

.include <bsd.port.mk>
