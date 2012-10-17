# $OpenBSD$

COMMENT =	small http server library

VERSION =	0.9.22
DISTNAME =	libmicrohttpd-${VERSION}

SHARED_LIBS =	microhttpd 0.4

CATEGORIES =	www

HOMEPAGE =	http://www.gnu.org/software/libmicrohttpd/

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB +=	gcrypt gmp gnutls gpg-error hogweed nettle p11-kit 
WANTLIB +=	pthread tasn1 z

MASTER_SITES =	${MASTER_SITE_GNU:=libmicrohttpd/}

MODULES =	devel/gettext

LIB_DEPENDS +=	security/libgcrypt \
		security/gnutls \
		security/libgpg-error \
		security/libtasn1

BUILD_DEPENDS =	misc/zzuf \
		net/curl \
		net/socat

USE_LIBTOOL =	Yes

CONFIGURE_STYLE =	autoconf	
CONFIGURE_ARGS +=	--with-gnutls
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# should be 2.67
AUTOCONF_VERSION =	2.67

.include <bsd.port.mk>
