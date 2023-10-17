COMMENT=	tool for linting and static analysis of Lua code
CATEGORIES=	devel

GH_ACCOUNT=	lunarmodules
GH_PROJECT=	luacheck
GH_TAGNAME=	v1.1.1

MAINTAINER=	Laurent Cheylus <foxy@free.fr>

BUILD_DEPENDS=	textproc/py-sphinx,python3>=4.0.2 \
		textproc/py-sphinx_rtd_theme,python3>=0.4.3

LIB_DEPENDS=	devel/luafs
RUN_DEPENDS=	devel/lua-argparse

# MIT
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/lua

pre-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/bin/luacheck.lua

do-build:
	${LOCALBASE}/bin/sphinx-build -N ${WRKSRC}/docsrc ${WRKSRC}/doc

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luacheck
	${INSTALL_DATA} ${WRKSRC}/src/luacheck/*.lua ${MODLUA_DATADIR}/luacheck

	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luacheck/builtin_standards
	${INSTALL_DATA} ${WRKSRC}/src/luacheck/builtin_standards/*.lua \
		${MODLUA_DATADIR}/luacheck/builtin_standards

	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luacheck/stages
	${INSTALL_DATA} ${WRKSRC}/src/luacheck/stages/*.lua \
		${MODLUA_DATADIR}/luacheck/stages

	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}/luacheck/vendor/sha1
	${INSTALL_DATA} ${WRKSRC}/src/luacheck/vendor/sha1/*.lua \
		${MODLUA_DATADIR}/luacheck/vendor/sha1

	${INSTALL_SCRIPT} ${WRKSRC}/bin/luacheck.lua ${PREFIX}/bin/luacheck

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacheck
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/luacheck

.include <bsd.port.mk>
