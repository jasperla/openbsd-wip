# $OpenBSD$

COMMENT =	tiny embeddable httpd library written in C
DISTNAME =	libmicrohttpd-0.9.58
CATEGORIES =	www

SHARED_LIBS +=	microhttpd                0.0 # 58.0

HOMEPAGE =	https://www.gnu.org/software/libmicrohttpd/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit
WANTLIB += pthread tasn1 unistring z

MASTER_SITES =	${MASTER_SITE_GNU:=libmicrohttpd/}

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	security/gnutls

.include <bsd.port.mk>
