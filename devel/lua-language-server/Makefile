COMMENT =	language server that offers Lua language support

GH_ACCOUNT =	LuaLS
GH_PROJECT =	lua-language-server
GH_TAGNAME =    3.15.0

# Sources for submodules
DIST_TUPLE +=	github CppCXY EmmyLuaCodeStyle \
		8500f3af178f097331d938378648078d023f4c7c \
		${WRKSRC}/3rd/EmmyLuaCodeStyle
DIST_TUPLE +=	github actboy168 bee.lua \
		8c01c7d79612d47f47f17d80304e66ae14d7b953 \
		${WRKSRC}/3rd/bee.lua
DIST_TUPLE += 	github actboy168 json.lua \
		9ae6772870ff0480ec83fc88dc8ffa52880b3a98 \
		${WRKSRC}/3rd/json.lua
DIST_TUPLE += 	github love2d-community love-api \
		853639288547618dece86c3a8e52348fe304eba2 \
		${WRKSRC}/3rd/love-api
DIST_TUPLE += 	github bjornbytes lovr-docs \
		e89c753e1c2849b7533481fcf058095f8e050b9f \
		${WRKSRC}/3rd/lovr-api
DIST_TUPLE +=	github sqmedeiros lpeglabel \
		912b0b9e8641074408ffc2259e069b188e0c717b \
		${WRKSRC}/3rd/lpeglabel
DIST_TUPLE +=	github actboy168 luamake \
		c086f35cfad0236f74ba380d51f211c52a2c8abc \
		${WRKSRC}/3rd/luamake

CATEGORIES =	devel

# https://github.com/LuaLS/lua-language-server
HOMEPAGE = 	https://luals.github.io/

MAINTAINER =    Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER =	base-clang ports-gcc

WANTLIB +=	${COMPILER_LIBCXX} c m

BUILD_DEPENDS =	devel/ninja

# Copy bee.lua sources for luamake
pre-patch:
	cp -r ${WRKSRC}/3rd/bee.lua/* ${WRKSRC}/3rd/luamake/bee.lua/

pre-configure:
	sed -i 's/%%LUA_VERSION%%/${GH_TAGNAME}/' ${WRKSRC}/script/version.lua

do-build:
	cd ${WRKSRC}/3rd/luamake &&  ninja -f compile/ninja/openbsd.ninja notest
	cd ${WRKSRC} && 3rd/luamake/luamake rebuild

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua-language-server
	${INSTALL_DATA} ${WRKSRC}/main.lua ${PREFIX}/lib/lua-language-server
	${INSTALL_DATA} ${WRKSRC}/debugger.lua ${PREFIX}/lib/lua-language-server

	cp -r ${WRKSRC}/meta ${PREFIX}/lib/lua-language-server
	cp -r ${WRKSRC}/locale ${PREFIX}/lib/lua-language-server
	cp -r ${WRKSRC}/script ${PREFIX}/lib/lua-language-server

	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua-language-server/bin
	${INSTALL_DATA} ${WRKSRC}/bin/main.lua ${PREFIX}/lib/lua-language-server/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/lua-language-server \
		${PREFIX}/lib/lua-language-server/bin

	${INSTALL_SCRIPT} ${FILESDIR}/lua-language-server ${PREFIX}/bin

# TODO: add tests for 3rd/bee.lua
# Fix errors with test.lua
do-test:
	cd ${WRKSRC} && bin/lua-language-server test.lua

.include <bsd.port.mk>
