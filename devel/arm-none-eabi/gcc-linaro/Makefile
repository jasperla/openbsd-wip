# $OpenBSD: Makefile,v 1.1.1.1 2015/05/28 23:28:25 bmercer Exp $

COMMENT=	gcc for arm-none-eabi cross-development, Linaro version

VERSION=	4.9.2015.03
REVISION=	0
DISTNAME=	gcc-linaro-4.9-2015.03
GCC_V=		4.9.3
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CONFIG}-gcc-linaro-${VERSION}

SUBST_VARS+=	VERSION GCC_V

WANTLIB=	c m stdc++ gmp mpfr mpc
DIST_SUBDIR=	gcc

MAKE_GXX=	Yes
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
		devel/arm-none-eabi/binutils \
		devel/arm-none-eabi/newlib

LIB_DEPENDS=	devel/mpfr devel/libmpc

RUN_DEPENDS=	devel/arm-none-eabi/binutils \
		devel/arm-none-eabi/newlib

LANGS=		c,c++
CC=		/usr/bin/gcc
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=${LANGS} \
		--enable-multilib \
		--enable-interwork \
		--with-newlib \
		--disable-lto \
		--enable-cpp \
		--datarootdir=${PREFIX}/arm-none-eabi/share
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET=	all-gcc all-target-libgcc all-target-libstdc++-v3
INSTALL_TARGET=	install-gcc install-target-libgcc install-target-libstdc++-v3

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV=	MACHINE_ARCH=arm-none-eabi

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

TEST_DEPENDS=devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
