# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	extremely fast Python linter and code formatter

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ruff
GH_TAGNAME =	v0.2.1

CATEGORIES =	devel textproc

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

# Generate shell completions
pre-install:
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion bash \
		> ${WRKSRC}/ruff.bash
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion fish \
		> ${WRKSRC}/ruff.fish
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion zsh \
		> ${WRKSRC}/ruff.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ruff ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/ruff.bash \
		${PREFIX}/share/bash-completion/completions/ruff

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/ruff.fish \
		${PREFIX}/share/fish/completions/

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/ruff.zsh \
		${PREFIX}/share/zsh/site-functions/_ruff

# Skip tests with errors (generate_json_schema, idx)
MODCARGO_TEST_ARGS +=	-- --skip generate_json_schema --skip idx

# Fix test for ruff/show_settings
pre-test:
	sed -i "/^file_resolver/s#\[BASEPATH\]#${WRKSRC}#" \
		${WRKSRC}/crates/ruff/tests/snapshots/$\
		show_settings__display_default_settings.snap
	sed -i "/^linter/s#\[BASEPATH\]#${WRKSRC}#" \
		${WRKSRC}/crates/ruff/tests/snapshots/$\
		show_settings__display_default_settings.snap

.include "crates.inc"

.include <bsd.port.mk>
