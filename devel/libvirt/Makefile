# $OpenBSD$

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-0.10.1
CATEGORIES=		devel

SHARED_LIBS +=  virt-qemu                 0.0 # 10.1
SHARED_LIBS +=  virt                      0.0 # 10.1

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		${HOMEPAGE}/sources/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext \
			lang/python

WANTLIB += avahi-client avahi-common c crypto curl dbus-1 gcrypt
WANTLIB += gmp gnutls gpg-error hogweed idn m ncurses nettle p11-kit
WANTLIB += pthread readline ssl tasn1 util xml2 z

LIB_DEPENDS=		net/avahi \
			net/curl \
			security/gnutls \
			security/libgcrypt \
			textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-avahi \
			--with-python \
			--without-yajl \
			--without-netcf \
			--without-network
# OpenBSD can't act as a virtualization host, so no need for libvirtd.
CONFIGURE_ARGS+=	--without-libvirtd

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt/ \

# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD
FAKE_FLAGS+=		NWFILTER_DIR=${TMPDIR} \
			FILTERS=""

.include <bsd.port.mk>
