COMMENT =	language server for Zig

GH_ACCOUNT =	zigtools
GH_PROJECT =	zls
GH_TAGNAME =	0.16.0

# Packages downloaded from Git
# See build.zig.zon
KNOWN_FOLDERS =	d6d03830968cca6b7b9f24fd97ee348346a6905d
DIFFZ =		b39fe07e7fdbcf56e43ba2890b9f484f16969f90
LSP_KIT =	b886a2b0d5cee85ecbcc3089b863f7517cc9ff7f
TRACY =		v0.13.1

DIST_TUPLE +=	github ziglibs known-folders ${KNOWN_FOLDERS} ../known_folders
DIST_TUPLE +=	github ziglibs diffz ${DIFFZ} ../diffz
DIST_TUPLE +=	github zigtools lsp-kit ${LSP_KIT} ../lsp_kit
DIST_TUPLE +=	github wolfpld tracy ${TRACY} ../tracy

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	lang/zig>=0.16.0

WANTLIB +=	c pthread

# TODO Run tests
NO_TEST =	Yes

TMPDIR = /tmp/zls/

do-build:
	rm -rf ${TMPDIR} && mkdir ${TMPDIR}
	cd ${WRKSRC} && ZIG_GLOBAL_CACHE_DIR=${TMPDIR} zig build \
		-Dstrip=true -Doptimize=ReleaseSafe

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zig-out/bin/zls ${PREFIX}/bin/

.include <bsd.port.mk>
