COMMENT =		port of http_parser to llparse
HOMEPAGE =		https://llhttp.org
CATEGORIES =		www net

V =			9.0.1
# "v${V}"         tag is the regular git tarball
# "release/v${V}" tag contains only fixed CMake and generated C files
DISTNAME =		llhttp-release-v${V}
PKGNAME =		llhttp-${V}
# XXX fetch fails if GH_TAGNAME contains slashes
MASTER_SITES =		https://github.com/nodejs/llhttp/archive/refs/tags/
DISTFILES =		llhttp-release-{release/v}${V}${EXTRACT_SUFX}

WANTLIB =		# empty

SHARED_LIBS =		llhttp	0.0	# 0.0

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		devel/cmake

.include <bsd.port.mk>
