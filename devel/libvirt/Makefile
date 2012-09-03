COMMENT=

DISTNAME=		libvirt-0.10.1
CATEGORIES=		devel

SHARED_LIBS +=  virt-qemu                 10.1 # 10.1
SHARED_LIBS +=  virt                      10.1 # 10.1

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		http://libvirt.org/sources/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-python \
			--without-network

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt/

.include <bsd.port.mk>
