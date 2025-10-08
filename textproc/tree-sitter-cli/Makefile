# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	tool to develop, test, and use Tree-sitter grammars

GH_ACCOUNT =	tree-sitter
GH_PROJECT =	tree-sitter
GH_TAGNAME =	v0.25.10

PKGNAME =	tree-sitter-cli-${GH_TAGNAME:S/v//}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD=	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/tree-sitter ${PREFIX}/bin/

# TODO Generate and install shell completions (bash/fish/zsh)

# TODO Fix tests

.include "crates.inc"

.include <bsd.port.mk>
