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

PORTHOME =	${WRKSRC}

# Generate shell completions for bash/fish/zsh
post-build:
	${MODCARGO_TARGET_DIR}/release/tree-sitter complete -s bash \
		> ${WRKBUILD}/tree-sitter.bash
	${MODCARGO_TARGET_DIR}/release/tree-sitter complete -s fish \
		> ${WRKBUILD}/tree-sitter.fish
	${MODCARGO_TARGET_DIR}/release/tree-sitter complete -s zsh \
		> ${WRKBUILD}/tree-sitter.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/tree-sitter ${PREFIX}/bin/

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/tree-sitter.bash \
		${PREFIX}/share/bash-completion/completions/tree-sitter
	${INSTALL_DATA} ${WRKBUILD}/tree-sitter.fish \
		${PREFIX}/share/fish/vendor_completions.d/tree-sitter.fish
	${INSTALL_DATA} ${WRKBUILD}/tree-sitter.zsh \
		${PREFIX}/share/zsh/site-functions/_tree-sitter

# TODO Fix tests

.include "crates.inc"

.include <bsd.port.mk>
