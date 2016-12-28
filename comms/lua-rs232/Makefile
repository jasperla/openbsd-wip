# $OpenBSD$


COMMENT=	Lua library for RS232 communication

# ynezz/librs232 1.0.2 with additional fixes
DISTNAME=	librs232-1.0.2.1
PKGNAME=	lua-${DISTNAME}

SHARED_LIBS +=  rs232                     0.0 # 0.0

HOMEPAGE=	https://github.com/ynezz/librs232

CATEGORIES=	comms

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/lua

LIB_DEPENDS=	lang/lua

WANTLIB=	lua m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

# Shuffle things around so lua can find it.
post-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	mv ${PREFIX}/lib/luars232.so.0.1 ${MODLUA_LIBDIR}/luars232.so

.include <bsd.port.mk>
