# $OpenBSD$

COMMENT=	Berkeley Internet Name Daemon

V=		9.9.1-P1
DISTNAME=	bind-$V
PKGNAME=	bind-${V:S/-P/pl/}

SHARED_LIBS +=  bind9                     0.0 # 60.4
SHARED_LIBS +=  dns                       0.0 # 70.2
SHARED_LIBS +=  isc                       0.0 # 63.1
SHARED_LIBS +=  isccc                     0.0 # 60.0
SHARED_LIBS +=  isccfg                    0.0 # 62.0
SHARED_LIBS +=  lwres                     0.0 # 60.1

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto m xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	converters/libiconv
LIB_DEPENDS=	textproc/libxml

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-libtool \
		--with-openssl \
		--with-randomdev=/dev/arandom

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

.include <bsd.port.mk>
