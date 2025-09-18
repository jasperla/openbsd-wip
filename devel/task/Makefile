COMMENT =	task runner and simpler Make alternative

V =		3.45.4

MODGO_MODNAME =	github.com/go-task/task/v3
MODGO_VERSION =	v${V}

DISTNAME =	task-${V}

CATEGORIES =	devel

HOMEPAGE =	https://taskfile.dev/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/internal/version.version=${V}

# for patch to apply
WRKDIST =	${WRKSRC}

# TODO: conflicts with productivity/taskwarrior
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completion/bash/task.bash \
		${PREFIX}/share/bash-completion/completions/task
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/completion/fish/task.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completion/zsh/_task \
		${PREFIX}/share/zsh/site-functions/

# TODO Run and check tests

.include "modules.inc"

.include <bsd.port.mk>
