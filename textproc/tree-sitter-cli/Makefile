COMMENT =	tool to develop, test, and use Tree-sitter grammars

GH_ACCOUNT =	tree-sitter
GH_PROJECT =	tree-sitter
GH_TAGNAME =	v0.26.5

PKGNAME =	tree-sitter-cli-${GH_TAGNAME:S/v//}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo lang/clang

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD=	Yes

# for rquickjs-sys build
MODCARGO_ENV =	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/tree-sitter ${PREFIX}/bin/

# TODO Generate and install shell completions (bash/fish/zsh)

# TODO Fix tests

.include "crates.inc"

.include <bsd.port.mk>
