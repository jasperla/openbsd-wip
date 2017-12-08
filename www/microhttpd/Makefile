# $OpenBSD:$

COMMENT =	small C HTTP library
DISTNAME =	libmicrohttpd-0.9.55

SHARED_LIBS +=  microhttpd                0.0 # 55.0

CATEGORIES =	www

# LGPL v2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gcrypt gmp gnutls gpg-error hogweed iconv idn2
WANTLIB += intl nettle p11-kit pthread tasn1 unistring z

MASTER_SITES =		${MASTER_SITE_GNU:=libmicrohttpd/}

LIB_DEPENDS =		converters/libunistring \
			net/curl \
			devel/gettext \
			devel/libffi \
			security/libnettle \
			security/libnettle \
			security/libtasn1 \
			security/libgpg-error \
			security/gnutls \
			security/libgcrypt

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
