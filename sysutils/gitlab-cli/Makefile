COMMENT =		GitLab CLI tool
CATEGORIES =		sysutils

V =			1.24.1
DISTNAME =		cli-v${V}
PKGNAME =		gitlab-cli-${V}

COMMIT =		e02b30c6e3ff7801f22d37ed63850211ca0c7bb6
MODGO_MODNAME =		gitlab.com/gitlab-org/cli
MODGO_VERSION =		v${V}
# MODGO_SUBDIR, WRKDIST, WRKSRC... I don't know;  looks like github-cli
# but works differently, upstreams wants to run their Makefile which is
# NOT compatible
WRKDIST =		${WRKDIR}/${DISTNAME}-${COMMIT}
WRKSRC =		${WRKDIST}

HOMEPAGE =		https://docs.gitlab.com/ee/integration/glab/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
