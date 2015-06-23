# $OpenBSD$

COMMENT =	unit testing framework for lua
DISTNAME =	lunit-0.5
CATEGORIES =	devel
HOMEPAGE =	http://www.mroth.net/lunit/

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/lua

MASTER_SITES =	${HOMEPAGE}

NO_BUILD =	Yes

PKG_ARCH =	*

post-patch:
	${SUBST_CMD} ${WRKSRC}/lunit

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/lunit ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lunit.lua \
			${WRKSRC}/lunit-console.lua \
				${MODLUA_LIBDIR}

do-test:
	@cd ${WRKSRC} && ./lunit lunit-tests.lua

.include <bsd.port.mk>
