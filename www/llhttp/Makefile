COMMENT =		 port of http_parser to llparse
CATEGORIES =		www net
GH_ACCOUNT =		nodejs
GH_PROJECT =		llhttp
V =			9.0.1
GH_TAGNAME =		v${V}

HOMEPAGE =		https://llhttp.org

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		devel/cmake

BUILD_DEPENDS =		lang/node

USE_GMAKE =		Yes

post-extract:
	# result of `npm install' with network access
	${TAR} -C ${WRKSRC} -xzf /tmp/llhttp-9.0.1-node_modules.tgz

pre-configure:
	# -D_RELEASE_=${V} does not work:
	#    VERSION "_RELEASE_" format invalid.
	sed -i '/project(llhttp/s,_RELEASE_,${V},' ${WRKSRC}/CMakeLists.txt
	# generate C sources
	# XXX CMakeLists.txt source path expectations differ from
	# bin/generate.ts and Makefile
	${MAKE_PROGRAM} -C ${WRKSRC} generate	# C sources

.include <bsd.port.mk>
