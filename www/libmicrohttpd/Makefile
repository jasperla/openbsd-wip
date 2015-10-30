# $OpenBSD$

SHARED_LIBS +=	microhttpd	0.0	# 42.0

COMMENT =	small http server library

VERSION =	0.9.44
DISTNAME =	libmicrohttpd-${VERSION}

CATEGORIES =	www

HOMEPAGE =	http://www.gnu.org/software/libmicrohttpd/

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB +=	ffi gcrypt gmp gnutls gpg-error hogweed nettle
WANTLIB +=	p11-kit pthread tasn1 z

MASTER_SITES =	${MASTER_SITE_GNU:=libmicrohttpd/}

MODULES =	devel/gettext

LIB_DEPENDS +=	devel/libffi \
		security/libgcrypt \
		security/gnutls \
		security/libgpg-error \
		security/libnettle \
		security/libtasn1 \
		security/p11-kit

# Note this includes test dependencies as configure checks
BUILD_DEPENDS =	misc/zzuf \
		net/curl \
		net/socat

CONFIGURE_STYLE =	autoconf
# dont include spdy not ready yet...
CONFIGURE_ARGS +=	--with-gnutls \
			--enable-spdy=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# should be 2.69
AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
