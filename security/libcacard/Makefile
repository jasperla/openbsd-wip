# $OpenBSD$

COMMENT=	virtual smart card emulator

DISTNAME=	libcacard-0.1.2

SHARED_LIBS +=	cacard                    0.0 # 0.0

CATEGORIES=	security

HOMEPAGE=	http://spice-space.org/download/libcacard/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c nspr4 nss3 nssutil3 plc4 plds4 pthread smime3 softokn3
WANTLIB += sqlite3 ssl3 z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	security/nss

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	autoconf

AUTOCONF_VERSION=	2.68

.include <bsd.port.mk>
