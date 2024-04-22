COMMENT =	language server that offers Lua language support

GH_ACCOUNT =	LuaLS
GH_PROJECT =	lua-language-server
GH_TAGNAME =    3.8.0

# Sources for submodules
DIST_TUPLE +=	github CppCXY EmmyLuaCodeStyle \
		660a26085ff2c1275392a291063404d54fdd32b9 \
		${WRKSRC}/3rd/EmmyLuaCodeStyle
DIST_TUPLE +=	github actboy168 bee.lua \
		8dcb2dadaeff86265ff6272012ed4ef8a8001c71 \
		${WRKSRC}/3rd/bee.lua
DIST_TUPLE += 	github actboy168 json.lua \
		21c9584d30fa36c542c98b6b1410393318583712 \
		${WRKSRC}/3rd/json.lua
DIST_TUPLE += 	github love2d-community love-api \
		728ba001f3398fd11b0a3909b919a7caf3e329a4 \
		${WRKSRC}/3rd/love-api
DIST_TUPLE += 	github bjornbytes lovr-docs \
		e89c753e1c2849b7533481fcf058095f8e050b9f \
		${WRKSRC}/3rd/lovr-api
DIST_TUPLE +=	github sqmedeiros lpeglabel \
		912b0b9e8641074408ffc2259e069b188e0c717b \
		${WRKSRC}/3rd/lpeglabel
DIST_TUPLE +=	github actboy168 luamake \
		5b1ca89fda355b2d479c38b4249b1e2766b55454 \
		${WRKSRC}/3rd/luamake

CATEGORIES =	devel

# https://github.com/LuaLS/lua-language-server
HOMEPAGE = 	https://luals.github.io/

MAINTAINER =    Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

WANTLIB +=	${COMPILER_LIBCXX} c m

BUILD_DEPENDS =		devel/ninja

# Copy bee.lua sources for luamake
pre-patch:
	cp -r ${WRKSRC}/3rd/bee.lua/* ${WRKSRC}/3rd/luamake/bee.lua/

post-patch:
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
