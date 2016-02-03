# $OpenBSD: Makefile,v 1.1.1.1 2015/05/28 23:28:25 bmercer Exp $

COMMENT=	bootstrap compiler for the arm-none-eabi toolchain

VERSION=	4.9.2015.03
#REVISION=	0
DISTNAME=	gcc-linaro-4.9-2015.03
GCC_V=		4.9.3
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CONFIG}-gcc-linaro-bootstrap-${VERSION}

SUBST_VARS+=	VERSION GCC_V

WANTLIB=	c m stdc++ gmp mpfr mpc
DIST_SUBDIR=	gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

# The "base" prefix is somewhat arbitrary, and introduced mostly because
# portcheck complains about lines longer than 80 characters.
MASTER_SITE_BASE=http://releases.linaro.org/15.03/components
MASTER_SITES= 	${MASTER_SITE_BASE}/toolchain/gcc-linaro/4.9/

BUILD_DEPENDS+=	devel/autoconf/2.13 \
		devel/bison \
		devel/metaauto \
		devel/arm-none-eabi/binutils

LIB_DEPENDS=	devel/mpfr devel/libmpc

RUN_DEPENDS=	devel/arm-none-eabi/binutils

CC=		/usr/bin/gcc
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=c \
		--without-headers \
		--disable-lto \
		--exec-prefix=${PREFIX}/arm-none-eabi/bootstrap	\
		--with-local-prefix=${PREFIX}/arm-none-eabi/bootstrap \
		--with-as=${LOCALBASE}/bin/arm-none-eabi-as \
		--with-ld=${LOCALBASE}/bin/arm-none-eabi-ld
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET=	all-gcc all-target-libgcc
INSTALL_TARGET=	install-gcc install-target-libgcc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV=	MACHINE_ARCH=arm-none-eabi

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

TEST_DEPENDS=devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
