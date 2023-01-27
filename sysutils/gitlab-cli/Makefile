COMMENT =		GitLab CLI tool
CATEGORIES =		sysutils

V =			1.24.1
DISTNAME =		cli-v${V}
PKGNAME =		gitlab-cli-${V}

COMMIT =		e02b30c6e3ff7801f22d37ed63850211ca0c7bb6
MODGO_MODNAME =		gitlab.com/gitlab-org/cli
MODGO_VERSION =		v${V}
WRKDIST =		${WRKDIR}/${DISTNAME}-${COMMIT}

HOMEPAGE =		https://docs.gitlab.com/ee/integration/glab/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

post-extract:
	# move WRKDIST where MODGO_SETUP_WORKSPACE expects it
	mkdir -p ${WRKDIR}/${MODGO_MODNAME:H}
	mv ${MODGO_SUBDIR} ${WRKSRC}

.include "modules.inc"
.include <bsd.port.mk>
