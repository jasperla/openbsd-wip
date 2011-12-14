# $OpenBSD$

SHARED_ONLY=	Yes

COMMENT=	Lua library for RS232 communication

# ynezz/librs232 1.0.2 with additional fixes from jasperla/librs232
DISTNAME=	librs232-1.0.2.1

SHARED_LIBS +=  rs232                     0.0 # 0.0

HOMEPAGE=	https://github.com/jasperla/librs232

CATEGORIES=	comms

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/lua

LIB_DEPENDS=	lang/lua

WANTLIB=	lua m

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

.include <bsd.port.mk>
