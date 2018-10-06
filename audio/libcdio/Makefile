# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:15 sthen Exp $

COMMENT=	compact disk input and control library

# # XXX speculating the version number of the next release
DISTNAME=	libcdio-2.1.0
CATEGORIES=	audio devel
# XXX I'm fetching from my fork with a ton of fixes and where I've merged
# ${FILESDIR}/openbsd.c into upstream's NetBSD driver.
#MASTER_SITES=	${MASTER_SITE_GNU:=libcdio/}
GH_ACCOUNT =	vext01
GH_PROJECT = 	libcdio
GH_COMMIT =	e2f3919357b76d9fadb3d57f20d2b1e8198f32d1

SHARED_LIBS=	cdio		1.0 \
		cdio++		1.0 \
		cdio_cdda	1.0 \
		cdio_paranoia 	1.0 \
		iso9660		1.0 \
		iso9660++	1.0 \
		udf		1.0

HOMEPAGE=	https://www.gnu.org/software/libcdio/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c cddb iconv m curses ${COMPILER_LIBCXX}

LIB_DEPENDS=	audio/libcddb \
		converters/libiconv

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-vcd-info
#CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
#		LDFLAGS="-L${LOCALBASE}/lib"


# XXX won't need autoconf for the final release
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
CONFIGURE_ARGS +=	--enable-maintainer-mode
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf --force --install

.include <bsd.port.mk>
