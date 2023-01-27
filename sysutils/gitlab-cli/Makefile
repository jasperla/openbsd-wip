COMMENT =		GitLab CLI tool

V =			1.24.1
MODGO_MODNAME =		gitlab.com/gitlab-org/cli
MODGO_VERSION =		v${V}

DISTNAME =		cli-${MODGO_VERSION}
PKGNAME =		gitlab-cli-${V}

CATEGORIES =		sysutils
HOMEPAGE =		https://docs.gitlab.com/ee/integration/glab/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go
MODGO_LDFLAGS =		-X main.build=1970-01-01 \
			-X main.version=${V}

post-extract:
	# move WRKDIST where MODGO_SETUP_WORKSPACE expects it
	mkdir -p ${WRKDIR}/${MODGO_MODNAME:H}
	mv ${WRKDIR}/${DISTNAME}-* ${WRKSRC}

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

post-install:
	${WRKDIR}/go/bin/gen-docs --path ${PREFIX}/man/man1 --manpage
	rm ${PREFIX}/bin/gen-docs

.include "modules.inc"
.include <bsd.port.mk>
