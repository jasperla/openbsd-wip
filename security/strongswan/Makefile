# $OpenBSD$

COMMENT=	IPsec-based VPN software (IKEv1/IKEv2) with XAUTH and EAP

DISTNAME=	strongswan-5.6.2
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	charon                    0.0 # 0.0
SHARED_LIBS +=	ipsec                     0.0 # 0.0
SHARED_LIBS +=	radius                    0.0 # 0.0
SHARED_LIBS +=	strongswan                0.0 # 0.0
SHARED_LIBS +=	tls                       0.0 # 0.0
SHARED_LIBS +=	vici                      0.0 # 0.0

CATEGORIES=	security net

HOMEPAGE=	https://www.strongswan.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c execinfo gmp m pthread

MASTER_SITES=	https://download.strongswan.org/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
BUILD_DEPENDS=	devel/bison
CONFIGURE_ENV=	YACC="bison -y"
USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
SYSCONFDIR=	${BASE_SYSCONFDIR}/strongswan

LIB_DEPENDS=	devel/gmp \
		devel/libexecinfo

CONFIGURE_ARGS= \
	--disable-kernel-netlink \
	--enable-kernel-pfroute \
	--enable-kernel-libipsec \
	--disable-scripts \
	--enable-eap-mschapv2 \
	--enable-md4 \
	--enable-eap-tls \
	--enable-eap-ttls \
	--enable-eap-peap \
	--enable-eap-radius \
	--enable-eap-identity \
	--enable-aesni \
	--enable-gcm

TEST_IS_INTERACTIVE=	threading test suite: rwlock test hangs!

post-install:
	find ${PREFIX}/lib/ipsec -name '*.la' -delete
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/strongswan
	mv ${WRKINST}${SYSCONFDIR}/{ipsec*,strong*,swan*} ${PREFIX}/share/examples/strongswan/

.include <bsd.port.mk>
